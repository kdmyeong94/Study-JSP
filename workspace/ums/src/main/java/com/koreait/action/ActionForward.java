package com.koreait.action;

public class ActionForward {  // 앞으로 프로젝트 할때도 복붙해서 사용하능한 클래스
							// 어떤 페이지방식 으로 이동 시킬것인지, 어떤 경로에 이동 시킬 것인지
							// 정보를 가지게 되는 클래스
	
	private boolean isRedirect; // 리다이렉트 방식으로 페이지 이동하고 싶으면 true
								// 포워드 방식이면 false
	private String path; // 이동하고자 하는 경로
	
	public ActionForward() {}  // 기본 생성자

	public ActionForward(boolean isRedirect, String path) { // 파라미터를 받아오는 생성자
		super();
		this.isRedirect = isRedirect;
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	
	// getter, setter 
	




	
	
}
