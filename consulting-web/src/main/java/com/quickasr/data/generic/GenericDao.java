package com.quickasr.data.generic;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

public interface GenericDao<T, PK extends Serializable> {

	public abstract PK create(T o);

	public abstract T read(PK id);

	public abstract T readWithClear(PK id);

	public abstract void update(T o);

	public abstract void delete(T o);

	public abstract T merge(T entity);

	public abstract void saveOrUpdate(T entity);

	public abstract List<T> findAll();

	public abstract void flush();

	public abstract void clear();

	public abstract List<T> findByName(String columName, String value);

	public abstract List<T> findByKeyValue(Map<String, String> keyValueMap);

	public void saveOrUpdateAll(List<T> entity);

	public List<T> findByName(String columName, int value);

	public List<T> findByName(String columName, Date value);

	public T findByNameSingle(String columName, String value) throws Exception;

	public Long getIdentifier(Object object) throws Exception;

	public List<Integer> getIdentifier(List<T> entity) throws Exception;
}
