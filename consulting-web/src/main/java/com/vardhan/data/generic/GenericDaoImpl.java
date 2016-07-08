package com.vardhan.data.generic;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

@SuppressWarnings("unchecked")
public class GenericDaoImpl<T, PK extends Serializable> implements GenericDao<T, PK> {

	private SessionFactory sessionFactory;
	private Class<T> type;

	public GenericDaoImpl(Class<T> type) {
		this.type = type;
	}

	public PK create(T o) {
		PK p = (PK) getSession().save(o);
		return p;
	}

	public T read(PK id) {
		return (T) getSession().get(type, id);
	}

	public T readWithClear(PK id) {
		return (T) getSession().get(type, id);
	}

	public void update(T o) {
		getSession().update(o);
	}

	public void delete(T o) {
		getSession().delete(o);
	}

	public T merge(T entity) {
		T t = (T) getSession().merge(entity);
		return t;
	}

	public void saveOrUpdate(T entity) {
		try {
			getSession().saveOrUpdate(entity);
		} catch (HibernateException exception) {
			throw exception;
		}
	}

	public List<T> findAll() {
		return getSession().createCriteria(type).list();
	}

	public void flush() {
		getSession().flush();
	}

	public void clear() {
		getSession().clear();
	}

	public List<T> findByName(String columName, String value) {
		List<T> objects = null;
		try {
			Query query = getSession().createQuery("from " + getPersistentClass().getName() + " where " + columName + " =:value");
			query.setParameter("value", value);
			objects = query.list();
		} catch (HibernateException e) {
			throw e;
		}
		return objects;
	}

	public T findByNameSingle(String columName, String value) {
		Query query = getSession().createQuery("from " + getPersistentClass().getName() + " where " + columName + " =:value");
		query.setParameter("value", value);
		return (T) query.list().get(0);
	}

	public List<T> findByKeyValue(Map<String, String> keyValueMap) {
		String hqlQuery = "from " + getPersistentClass().getName() + " where ";
		Set<String> keySet = keyValueMap.keySet();
		int count = 0;
		for (String key : keySet) {
			String value = keyValueMap.get(key);
			hqlQuery = hqlQuery + key + " = '" + value + "'";

			if (count < keySet.size() - 1) {
				hqlQuery = hqlQuery + " and ";
			}
			count++;
		}
		Query query = getSession().createQuery(hqlQuery);
		List<T> objects = query.list();
		return objects;
	}

	public void saveOrUpdateAll(List<T> entity) {
		try {
			for (Iterator<T> it = entity.iterator(); it.hasNext();) {
				getSession().saveOrUpdate(it.next());
			}
		} catch (HibernateException exception) {
			throw exception;
		}
	}

	public List<T> findByName(String columName, int value) {
		Query query = getSession().createQuery("from " + getPersistentClass().getName() + " where " + columName + " =:value");
		query.setParameter("value", value);
		List<T> objects = query.list();
		return objects;
	}

	public List<T> findByName(String columName, Date value) {
		Query query = getSession().createQuery("from " + getPersistentClass().getSimpleName() + " where " + columName + " =:value");
		query.setParameter("value", value);
		List<T> objects = query.list();
		return objects;
	}

	public List<Integer> getIdentifier(List<T> entity) throws Exception {
		List<Integer> ids = new ArrayList<Integer>();
		try {
			for (Iterator<T> it = entity.iterator(); it.hasNext();) {
				ids.add((Integer) getSession().getIdentifier(it.next()));
			}
		} catch (HibernateException exception) {
			throw exception;
		}
		return ids;
	}

	public Long getIdentifier(Object object) throws Exception {
		return Long.parseLong(getSession().getIdentifier(object).toString());
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return getSessionFactory().getCurrentSession();
	}

	public Class<T> getPersistentClass() {
		return type;
	}
}
