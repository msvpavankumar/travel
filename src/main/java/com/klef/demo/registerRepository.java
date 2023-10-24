package com.klef.demo;

import org.springframework.data.repository.CrudRepository;

public interface registerRepository extends CrudRepository<register,Integer>
{

	register findByEmailAndCpswd(String uname, String cpswd);
	

}
