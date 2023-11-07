<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.hrp.board.model.vo.Board"%>
<%
	Board b = (Board)request.getAttribute("b");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
       
        .text-area{
            width: 500px;
            height: 25px;
        }
        textarea{
            resize: none;
            width: 500px;
            height: 300px;
        }
    </style>
</head>
<body>
   <%@ include file = "../common/menubar.jsp"%>
    <div class="freeBoard-area" align="center">
        <form action="<%=contextPath %>/enrollUpdate.fb" method="POST">
        
        	<input type="hidden" name="bno" value="<%=b.getBoardNo()%>">
        	
            <table>
                <h1 align="center" style="font-size: 30px;">자유게시판</h1>
                <tr align="left">
                    <th>
                        제목 
                    </th>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="boardTitle" class="text-area" value="<%=b.getBoardTitle() %>"> 
                    </td>
                </tr>
                <tr align="left">
                    <th>
                        작성자
                    </th>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="boardWriter" class="text-area" value = "<%= loginUser.getUserName() %>" disable >
                    </td>
                </tr>
                <tr align="left">
                    <th>내용</th>
                </tr>
                <tr>
                    <td><textarea name="boardContend" id="" ><%=b.getBoardContent() %></textarea></td>
                </tr>
               <!-- <tr align="left">
                    <th>카테고리</th>
                </tr>
                <tr>
                    <td>
                          <select>
                            <option>후기</option>
                            <option>질문</option>
                            <option>일상</option>
                            <option>의견</option>
                            <option>기타</option>
                        </select>
                        
                    </td>
                </tr>-->
                <tr>
                    <td align="center">
                        <input type="submit" value="수정하기"></input>
                        <input type="button" value="돌아가기" onclick="location.href='freeboardForm.fb?cpage=1'">
                    </td>
                    
                </tr>
            </table>

        </form>
    </div>
</body>
</html>