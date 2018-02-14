package yummyhome.util;

import java.util.List;

/**
 * 分页数据
 * */
public class PageData<T> {
	
	/**每页几条*/
	private long pageSize;
	/**当前页*/
	private long currentPage;
	/**总记录数*/
	private long totalRecods;
	/**数据集合*/
	List<T> resultList;
	
	public PageData(long currentPage, long pageSize, long totalRecods, List<T> resultList) {
		super();
		this.pageSize = pageSize;
		this.currentPage = currentPage;
		this.totalRecods = totalRecods;
		this.resultList = resultList;
	}
	
	//总记录数
	public long getTotalRecods() {
		return totalRecods;
	}
	public void setTotalRecods(long totalRecods) {
		this.totalRecods = totalRecods;
	}
	
	//每页几条
	public long getPageSize() {
		return pageSize;
	}
	public void setPageSize(long pageSize) {
		this.pageSize = pageSize;
	}
	
	//计算总页数返回
	public long getTotalPages() {
		long total = totalRecods/pageSize;
		if (totalRecods%pageSize!=0) {
			total++;
		}
		return total;
	}
	
	//当前页
	public long getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(long currentPage) {
		this.currentPage = currentPage;
	}
	
	//数据集合
	public List<T> getResultList() {
		return resultList;
	}
	public void setResultList(List<T> resultList) {
		this.resultList = resultList;
	}
	
	//上一页
	public long getPre(){
		if(currentPage>1){
			return currentPage-1;
		}
		return 1;
	}
	
	//下一页
	public long getNext(){
		if(currentPage < getTotalPages()){
			return currentPage+1;
		}
		return getTotalPages();
	}
}
