package ysi.spring.pet.dao;

import java.util.List;

import ysi.spring.pet.dto.PetDTO;

public interface PetDAO {

public List<PetDTO> petSelectAll();
public PetDTO petDetail(PetDTO petDTO);
public PetDTO petNameCheck(String name);
public void petInsert(PetDTO petDTO);
public void petUpdate(PetDTO petDTO);
public void petDelete(String name);



}
