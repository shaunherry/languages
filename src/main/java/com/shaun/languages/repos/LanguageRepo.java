package com.shaun.languages.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.shaun.languages.models.Language;

@Repository

public interface LanguageRepo extends CrudRepository<Language, Long>{
	
	
	
	
	List<Language> findAll();
	
	// find language by searching for and matching creators name
	List<Language>findByCreator(String name);
	
	
}
