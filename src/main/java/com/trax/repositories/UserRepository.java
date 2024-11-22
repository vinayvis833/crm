package com.trax.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.trax.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByEmail(String email);

}
