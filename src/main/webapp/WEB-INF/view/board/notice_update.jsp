<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../process/css/board.css" type="text/css">

<body>
	<%@include file="../nav.jsp"%>
    <!-- notice_update start -->
    <div class="notice_update container">
        <div class="title">
            <h1>공지사항 수정</h1>
            <hr>
        </div>
        <div class="update">
            <form class="update_form" action="/admin/notice/noticeupdate" method="post">
                <div class="form-group row">
                    <label class="col-sm-2 input-name">제목</label>
                    <input class="form-input" name="notice_title" type="text" required value="${notice.notice_title }">
                    <input type="hidden" name="notice_code" value="${notice.notice_code }">
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 input-name">내용</label>
                    <textarea name="notice_content" cols="50" rows="8"  required>${notice.notice_title }</textarea>
                </div>
                <hr>
                <div class="submit" align="end">
                    <button class="btn btn-primary" type="submit">수정</button>
                    <a href="/admin/notice/noticedelete?noticecode=${notice.notice_code}" class="btn btn-primary" onclick="return confirm('게시물을 삭제 하시겠습니까?');">삭제</a>
                    <a href="/admin/notice/noticeadmin?page=${cri.page}" class="btn btn-primary">되돌아가기</a>
                </div>
            </form>
        </div>
    </div>
    <!-- notice_add end -->
    <jsp:include page="../footer.jsp"/>
</body>
</html>