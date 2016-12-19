package com.xhc.blog.common;

public class PageParam {

	private int currPage ; // 当前页
	
	private int totalPage ; // 总页
	private int rowCount ; // 总记录数
	private int hasFirst;//是否是第一页
	private int hasLast;//是否是最后一页
	private int hasPre; //前一页
	private int hasNext; //后一页
	public static int pageSize = 3; // 页大小
	


	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getTotalPage() {
		totalPage=rowCount/pageSize;
		if(rowCount%pageSize!=0){
			totalPage++;
		}
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		int totalPage = rowCount / pageSize;
		if (rowCount % pageSize > 0) {
			totalPage += 1;
		}
		setTotalPage(totalPage);
		this.rowCount = rowCount;
	}

	public static int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getHasFirst() {
		return 1;
	}

	public void setHasFirst(int hasFirst) {
		this.hasFirst = hasFirst;
	}

	public int getHasLast() {
		return getTotalPage();
	}

	public void setHasLast(int hasLast) {
		this.hasLast = hasLast;
	}

	public int getHasPre() {
		if(currPage<=1){
			return 1;
		}
		return currPage-1;
	}

	public void setHasPre(int hasPre) {
		this.hasPre = hasPre;
	}

	public int getHasNext() {
		if(currPage>=getHasLast())
			return hasLast;
		return currPage+1;
	}

	public void setHasNext(int hasNext) {
		this.hasNext = hasNext;
	}

	
}
