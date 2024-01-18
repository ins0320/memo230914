<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<div class="d-flex justify-content-center">
	<div class="w-50">
		<h1>글 상세</h1>
		
		<input type="text" id="subject" class="form-control" placeholder="제목을 입력하세요">
		<textarea id="content" class="form-control" placeholder="내용을 입력하세요" rows="10"></textarea>
		
		<%-- 이미지가 있을 때만 영역 노출 --%>
		<c:if test="${not empty post.imagePath}">
			<div class="my-3">
				<img src="${post.imagePath}" alt="imagePath" width="50">
			</div>
		</c:if>
		<div class="d-flex justify-content-end my-3">
			<input type="file" id="file" accept=".jpg, .png, .gif, .jpeg">
		</div>
		
		<div class="d-flex justify-content-between">
			<button type="button" id="deleteBtn" class="btn btn-secondary">삭제</button>
			
			<div>
				<a href="/post/post-detail-view" class="btn btn-dark">목록</a>
				<button type="button" id="saveBtn" class="btn btn-info">수정</button>
			</div>
		</div>
	</div>
</div>