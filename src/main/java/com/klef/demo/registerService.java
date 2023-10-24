package com.klef.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class registerService {
	@Autowired
	registerRepository regrepository;
	
	public void addregisterrecord(register reg) {
		regrepository.save(reg);
	}

	public Object findByEmailAndPassword(String uname, String cpswd) {
		return  regrepository.findByEmailAndCpswd(uname, cpswd);
	}
	
	
}
