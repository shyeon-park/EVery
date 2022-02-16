package every.com.station;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import every.com.bookmark.BookmarkDTO;
import every.com.bookmark.BookmarkService;
import every.com.member.MemberDTO;
import io.ipinfo.api.IPinfo;
import io.ipinfo.api.errors.RateLimitedException;
import io.ipinfo.api.model.IPResponse;


@Controller
@RequestMapping(value="/station")
public class StationController {
	@Autowired
	private MapService map;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private BookmarkService service;
	
//	@RequestMapping(value="/toGetStation")
//	public String toGetStation(String station) throws Exception{
//		System.out.println(station);
//		if(station != null && session.getAttribute("loginSession") != null) {
//			String id = ((MemberDTO)session.getAttribute("loginSession")).getId();
//			BookmarkDTO dto = service.selectByStation(station,id);
//			session.setAttribute("BookmarkDTO", dto);
//		}else {
//			session.removeAttribute("BookmarkDTO");
//		}
//		return "station/station";
//	}
	
	@RequestMapping(value="/toGetStation")
	public String toGetStation(String station,Model model) throws Exception{
		System.out.println(station);
		if(station != null && session.getAttribute("loginSession") != null) {
			String id = ((MemberDTO)session.getAttribute("loginSession")).getId();
			BookmarkDTO dto = service.selectByStation(station,id);
//			session.setAttribute("BookmarkDTO", dto);
			if(dto != null) {
			model.addAttribute("BookmarkDTO", dto);
			}
		}
		return "station/station";
	}
	
	@RequestMapping(value = "/getLiveStatin.do",produces = "application/json;charset=utf-8;")
	@ResponseBody
	public String getMap(String chrstnNm) throws Exception {
		return map.getData(chrstnNm);
	}
	
	@RequestMapping(value="/getIP",produces = "application/json;charset=UTF-8;")
	@ResponseBody
	public String getIP(String pubIP) throws Exception{
		System.out.println("ip : " + pubIP);
		IPinfo ipInfo = new IPinfo.Builder()
                .setToken("e976806aa11efe")
                .build();
		String latitude = null;
		String longitude = null;
        try {
//          IPResponse response = ipInfo.lookupIP("210.100.160.139");
            IPResponse response = ipInfo.lookupIP(pubIP);
            latitude = response.getLatitude();
            longitude = response.getLongitude();
            System.out.println(response.getLatitude());
            System.out.println(response.getLongitude());
        } catch (RateLimitedException ex) {
        	System.out.println("ex : "+ex);
        }
		return "{\"latitude\":"+latitude+",\"longitude\":"+longitude+"}";
	}


}
