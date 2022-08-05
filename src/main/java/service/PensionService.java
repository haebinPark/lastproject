package service;

import java.io.IOException;
import java.util.Enumeration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;

import DAO.TBL_PENSIONDAO;
import DTO.TBL_PENSION;
@Service
public class PensionService {
	
	@Autowired
	private TBL_PENSIONDAO pensionDao;

	public String pensionregist(TBL_PENSION pe) {
		TBL_PENSION newpension = new TBL_PENSION(
				pe.getName(), 
				pe.getPrice(), 
				pe.getRoomnumber(),
				pe.getMaxpeople(), 
				pe.getAddress(),
				pe.getComments(), 
				pe.getCheckin(), 
				pe.getCheckout(),
				pe.getService(),
				pe.getInservice(),
				pe.getImage());
		pensionDao.insert(newpension);
		return newpension.getPensionid();
	}
	
	
	public static TBL_PENSION upload(MultipartRequest multi) throws IOException {
		String filename="";
		TBL_PENSION pension = new TBL_PENSION();
		String[] service_group=null;
		String[] inservice_group=null;
		pension.setName(multi.getParameter("name"));
		pension.setPrice(multi.getParameter("price"));
		pension.setRoomnumber(multi.getParameter("roomnumber"));
		pension.setMaxpeople(multi.getParameter("maxpeople"));
		pension.setAddress(multi.getParameter("address"));
		pension.setComments(multi.getParameter("comments"));
		pension.setCheckin(multi.getParameter("checkin"));
		pension.setCheckout(multi.getParameter("checkout"));
		if(multi.getParameterValues("service")==null) {
			service_group=null;
		}
		else {
			service_group =multi.getParameterValues("service");
			pension.setService(String.join(",",service_group));
		}
		if(multi.getParameterValues("inservice")==null) {
			inservice_group=null;
		}
		else {
			inservice_group =multi.getParameterValues("inservice");
			pension.setInservice(String.join(",",inservice_group));
		}
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		filename = multi.getFilesystemName(fname);
		pension.setImage(filename);	
		return pension;
	}

}
