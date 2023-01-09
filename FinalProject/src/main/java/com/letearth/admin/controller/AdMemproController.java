package com.letearth.admin.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.letearth.prodetail.domain.Criteria;
import com.letearth.admin.domain.MemOrdVO;
import com.letearth.order.domain.OrderVO;
import com.letearth.prodetail.domain.PageVO;
import com.letearth.admin.service.AdMemproService;
import com.letearth.member.domain.MemberVO;
import com.letearth.project.domain.ProjectVO;

@Controller
@RequestMapping("/mempro/*")
public class AdMemproController {
	
	private static final Logger mylog 
	= LoggerFactory.getLogger(AdBoardController.class);
	
	@Inject
	private AdMemproService adMemproService; // 그냥 service라고 할지 아직 안정해서 일단 풀네임으로 선언함.
	
	
	/**
	 * 프로젝트 리스트 조회 1(상태2-4)
	 */
	//http://localhost:8080/mempro/adProList1
	@RequestMapping(value="/adProList1", method=RequestMethod.GET)
	public String adProList1GET(HttpSession session, Model model, Criteria cri) throws Exception{
		// session - id값 가져오기
		// 관리자 로그인제어
//		String id = (String)session.getAttribute("id");
//		if(id==null || !id.equals("admin")) {
//			return "redirect:member/login";
//		}
		
		// 서비스 -dao 프로젝트 목록 가져오기
		List<ProjectVO> proList = adMemproService.getListPro1(cri);
		
		
		// 페이징처리 하단부 정보 준비 -> 뷰페이지로 전달
		PageVO pvo = new PageVO();
		pvo.setCri(cri);
		mylog.debug("totalPro : "+adMemproService.totalPro1());
		System.out.println("totalPro : "+adMemproService.totalPro1());
		pvo.setTotalCount(adMemproService.totalPro1()); // 프로젝트 전체 개수
	
		
		model.addAttribute("proList",proList);
		model.addAttribute("pvo", pvo);
		
		return "/mempro/adProList1";
	}
	
	
	
	/**
	 * 프로젝트 상세조회 1
	 */
	//http://localhost:8080/mempro/adProDetail1
	@RequestMapping(value="/adProDetail1", method=RequestMethod.GET)
	public void adProDetail1GET(Model model, @RequestParam("pro_no") int pro_no, HttpSession session, OrderVO ordVO) throws Exception{
		
		ProjectVO proVO = adMemproService.getDetailPro1(pro_no);
		int memOrd = adMemproService.totalMemOrd();
		int memPro = adMemproService.totalMemPro();
		
		model.addAttribute("proVO", proVO);
		model.addAttribute("memOrd", memOrd);
		model.addAttribute("memPro", memPro);
		
		
		
	}
	
	
	
	/**
	 * 프로젝트 리스트 조회 2(상태5-7)
	 */
	//http://localhost:8080/mempro/adProList2
	@RequestMapping(value="/adProList2", method=RequestMethod.GET)
	public String adProList2GET(HttpSession session, Model model, Criteria cri) throws Exception{
		// session - id값 가져오기
		// 관리자 로그인제어
//		String id = (String)session.getAttribute("id");
//		if(id==null || !id.equals("admin")) {
//			return "redirect:member/login";
//		}
		
		// 서비스 -dao 프로젝트 목록 가져오기
		List<ProjectVO> proList = adMemproService.getListPro2(cri);
		
		// 페이징처리 하단부 정보 준비 -> 뷰페이지로 전달
		PageVO pvo = new PageVO();
		pvo.setCri(cri);
		mylog.debug("totalPro2 : "+adMemproService.totalPro2());
		pvo.setTotalCount(adMemproService.totalPro2()); // 결제리스트 전체 개수
		
		
		model.addAttribute("proList",proList);
		model.addAttribute("pvo", pvo);
		
		return "/mempro/adProList2";
	}
	
	
	
	/**
	 *  프로젝트 상세조회 2
	 */

	@RequestMapping(value="/adProDetail2", method=RequestMethod.GET)
	public void adProDetail2GET(Model model, @RequestParam("pro_no") int pro_no, HttpSession session, OrderVO ordVO) throws Exception{
		
		
		
		ProjectVO proVO = adMemproService.getDetailPro1(pro_no);
		int memOrd = adMemproService.totalMemOrd();
		int memPro = adMemproService.totalMemPro();
		List<OrderVO> ordList = adMemproService.proOrdMemList(ordVO); // 결제회원 리스트
		
		model.addAttribute("proVO", proVO);
		model.addAttribute("memOrd", memOrd);
		model.addAttribute("memPro", memPro);
		model.addAttribute("ordList",ordList);
		
		System.out.println("ordList  가 담기는가 확인해보자고 : 컨트롤러 "  + ordList);
		
	}	
	
	
	
	/**
	 * 배송현황 상세조회
	 */
	//http://localhost:8080/mempro/adShipDetail
	@RequestMapping(value="/adShipDetail", method=RequestMethod.GET)
	public void adShipDetailGET(HttpSession session, Model model,@RequestParam("pro_no") int pro_no) throws Exception{
		
	}
	
	
	//------------------------------------------------------------------------------------------------------------------------
	
	
	
	/**
	 * 회원 리스트
	 */
	//http://localhost:8080/mempro/adMemList
	@RequestMapping(value="/adMemList", method=RequestMethod.GET)
	public String adMemListGET(HttpSession session, Model model, Criteria cri) throws Exception{
			// session - id값 가져오기
			// 관리자 로그인제어
//			String id = (String)session.getAttribute("id");
//			if(id==null || !id.equals("admin")) {
//				return "redirect:member/login";
//			}
			
			// 서비스 dao 회원 목록 가져오기
			List<MemberVO> memList = adMemproService.getMemList(cri);
			
			model.addAttribute("memList",memList);
			System.out.println("memList : " + memList);
			
			return "/mempro/adMemList";
		
	}
	
	
	
	/**
	 * 회원 상세조회
	 */
	//http://localhost:8080/mempro/adMemDetail
	@RequestMapping(value="/adMemDetail", method=RequestMethod.GET)
	public void adMemDetailGET(HttpSession session, Model model, @RequestParam("mem_id") String mem_id, MemOrdVO moVO, ProjectVO proVO) throws Exception{
		
		MemberVO memVO = adMemproService.getMemDetail(mem_id);
		List<MemOrdVO> ordList = adMemproService.memOrdList(moVO);
		List<ProjectVO> proList = adMemproService.memProList(proVO);
		
		mylog.debug("memVO : 매퍼에서 다 넣어졌는지 확인해보기 " + memVO);
		System.out.println("proVO : 매퍼에서 다 넣어졌는지 확인해보기 " + memVO);
		System.out.println("ordList : ordList가 만들어졌는가...확인해보자 " + ordList);
		System.out.println("proList : proList가 만들어졌는가...확인해보자 " + proList);
		
		
		
		model.addAttribute("memVO", memVO);
		model.addAttribute("ordList", ordList);
		model.addAttribute("proList", proList);
		
		
	}
	
	
	
	/**
	 * 회원 탈퇴
	 * GET은 따로 만들지않고 모달창에서 removeForm받은 다음 post로 보내기
	 */
	//http://localhost:8080/mempro/adMemRemove
	@RequestMapping(value="/adMemRemove", method=RequestMethod.POST)
	public String adMemRemovePOST(MemberVO memVO) throws Exception{
		
		return "redirect:/mempro/adMemList";
	}
	
	
	
	
}