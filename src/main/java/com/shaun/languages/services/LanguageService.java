package com.shaun.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shaun.languages.models.Language;
import com.shaun.languages.repos.LanguageRepo;


@Service
public class LanguageService {
	
	@Autowired
	private LanguageRepo languageRepo;
	
	public List<Language> all() {
		return languageRepo.findAll();
	}
	
	//create a language
	public Language create(Language language) {
		return languageRepo.save(language);
	}
	
	//delete a language
	public Language delete(Long id) {
		languageRepo.deleteById(id);
		return null;
	}
	
	//retrieve a book
	public Language find(Long id) {
		Optional<Language> optionalLanguage = languageRepo.findById(id);
		if(optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		} else {
			return null;
		}
	}

}



