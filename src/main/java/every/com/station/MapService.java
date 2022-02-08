package every.com.station;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import org.springframework.stereotype.Service;

@Service
public class MapService {
	public String getData() throws Exception{
		StringBuilder urlBuilder = new StringBuilder("http://api.data.go.kr/openapi/tn_pubr_public_elcty_car_chrstn_api"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=uJrR4M0I0ggBr9Z1ZF%2F4FyzgYw6FZZoXzIw%2BZs9WEA6XTuTuwse63oOBm5B6PVtdXabiKpWRJcTTHPh9cgg3bQ%3D%3D"); /* Service Key */
		urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지 번호 */
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 한 페이지 결과 수 */
		urlBuilder.append("&" + URLEncoder.encode("type", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /* XML/JSON 여부 */
//		urlBuilder.append("&" + URLEncoder.encode("chrstnNm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 충전소명 */	// ex) 홈플러스 구월점
//		urlBuilder.append("&" + URLEncoder.encode("slowChrstnYn", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 완속충전가능여부 */ // ex) N or Y
//		urlBuilder.append("&" + URLEncoder.encode("fastChrstnYn", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 급속충전가능여부 */ // ex) N or Y
//		urlBuilder.append("&" + URLEncoder.encode("fastChrstnType", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 급속충전타입구분 */ // ex) DC차데모+AC3상
//		urlBuilder.append("&" + URLEncoder.encode("prkplceLevyYn", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 주차료부과여부 */	// ex) N or Y
//		urlBuilder.append("&" + URLEncoder.encode("institutionNm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 관리업체명 */	// ex) 환경부(한국자동차환경협회)
//		urlBuilder.append("&" + URLEncoder.encode("latitude", "UTF-8") + "=" + URLEncoder.encode("37.4517361878", "UTF-8")); /* 위도 */	
//		urlBuilder.append("&" + URLEncoder.encode("hardness", "UTF-8") + "=" + URLEncoder.encode("126.7019408", "UTF-8")); /* 경도 */
//		urlBuilder.append("&" + URLEncoder.encode("insttCode", "UTF-8") + "=" + URLEncoder.encode("3530000", "UTF-8")); /* 제공기관코드 */
//		urlBuilder.append("&" + URLEncoder.encode("insttNm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 제공기관명 */
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json;charset=UTF-8;");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(),"UTF-8"));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
//		System.out.println(sb.toString());
		return sb.toString();
	}
}
