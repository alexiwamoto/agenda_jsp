package com.phonebook.model.bean;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "contact")
public class ContactBean implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    @Column(name="name",nullable=true,length=45)
    private String name;

    @Column(name="email",nullable=true,length=45)
    private String email;

    @Column(name="phone",nullable=true,length=45)
    private String phone;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
