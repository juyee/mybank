package com.my.utils;
import java.util.List;
/**
 * 分页工具类
 * @param <T> 泛型类
 */
public class Pager<T> {
	private List<T> list;//要分页的集合
	private int pageNum;//页码
	private int pageSize;//页大小
	private long totalPage;//总页数
	private long totalRow;//总行数
	public long getTotalRow() {
		return totalRow;
	}
	public void setTotalRow(long totalRow) {
		this.totalRow = totalRow;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public long getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}
}
