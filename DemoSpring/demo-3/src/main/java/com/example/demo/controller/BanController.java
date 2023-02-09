package com.example.demo.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Ban;
import com.example.demo.model.ChiTietHoaDon;
import com.example.demo.model.HoaDon;


@RequestMapping("/Quan-Ly-Ban")
@Controller
public class BanController extends common{
	@GetMapping("/ban")
	public ModelAndView show_thong_tin_ban(HttpSession session) {
		 List<Ban> list = new ArrayList<>();
	        mv.addObject("bans",list);
	        mv.setViewName("chitietban");
	        mv.addObject("bans",PersonService.ShowBan());
	        session.setAttribute("listban",list);        
	        return mv;
	}
	@PostMapping("/update-trangthai-ban")
    public ModelAndView update_trang_thai_ban(Ban b){
        PersonService.UpdateBan(b);	        
            mv.setViewName("redirect:/Quan-Ly-Ban/ban");
        return mv;
    }
	@GetMapping ("/xem-hoa-don/{mahd}")
    public ModelAndView xem_hoa_don(HttpSession session,@PathVariable("mahd") String mahd){
	 	List<HoaDon> list = new ArrayList<>();
        mv.addObject("hoadons",list);
        mv.setViewName("Server-XemHoaDon");
        mv.addObject("hoadons",HoaDonService.ShowListHoaDon(mahd));
        session.setAttribute("hoadons",list);        
        return mv;
    }
	@GetMapping ("/lich-su/{maPhieu}")
    public ModelAndView chi_tiet_phieu_nhap(HttpSession session,@PathVariable("maPhieu") String maPhieu){
        mv.setViewName("SuaCTDN");
        HoaDon p = HoaDonService.ShowDetailHoaDon(maPhieu);
        List<ChiTietHoaDon> list = p.getChitiethoadon();
        session.setAttribute("hoadons",list);
        mv.addObject("hoadon",p);
        return mv;
    }
 @PostMapping("/sua")
    public ModelAndView sua(HoaDon hoadon,Principal principal){
	 	
        HoaDonService.UpdateHoaDon(hoadon);	        
            mv.setViewName("redirect:/Quan-Ly-Ban/ban");
        return mv;
    }

	
}
