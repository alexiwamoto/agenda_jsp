package com.phonebook.model.dao;

import com.phonebook.connection.HibernateConnection;
import com.phonebook.model.bean.ContactBean;
import org.hibernate.Session;

import java.util.List;

public class ContactDao {
    private Session session;

    public ContactDao() {
    }

    public boolean addContact(ContactBean contactBean) {
        session = HibernateConnection.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(contactBean);
        session.getTransaction().commit();
        session.close();
        return true;
    }

    public boolean removeContact(ContactBean contactBean){
        session = HibernateConnection.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(contactBean);
        session.getTransaction().commit();
        session.close();
        return true;
    }

    public boolean editContact(ContactBean contactBean){
        session = HibernateConnection.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(contactBean);
        session.getTransaction().commit();
        session.close();
        return true;
    }

    public List getContacts(){
        List contacts = null;
        session = HibernateConnection.getSessionFactory().openSession();
        session.beginTransaction();
        contacts = session.createQuery("from ContactBean order by id").list();
        session.getTransaction().commit();
        session.close();
        return contacts;
    }

    public ContactBean getContactById(Long id){
        session = HibernateConnection.getSessionFactory().openSession();
        ContactBean contactBean = (ContactBean) session.get(ContactBean.class, new Long(id));
        session.close();
        return contactBean;
    }
}
