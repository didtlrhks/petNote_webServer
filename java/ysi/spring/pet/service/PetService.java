package ysi.spring.pet.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ysi.spring.pet.dto.PetDTO;

public interface PetService {
	
	public List<PetDTO> petSelectAll();
	public PetDTO petDetail(PetDTO petDTO);
	public PetDTO petInsert(PetDTO petDTO);
	public void petUpdate(PetDTO petDTO);
	public void petDelete(String name);
	public int petNameCheck(HttpServletRequest request, HttpServletResponse response);
	

}
