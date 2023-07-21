<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회의록목록</title>
        <script src="https://kit.fontawesome.com/794ac64f16.js" crossorigin="anonymous"></script>
        <style>
            .main-area {
   				 width: 1200px;
    			height: 1000px;
    			margin: auto;
    			margin-top: 20px; /* Add this line */
            }

            .title-area {
                text-align: center;
                display: flex;
                flex-direction: row;
                justify-content: space-between;
            }

            #title {
                font-size: 35px;
            }

            #sendRequest {
                font-size: 20px;
                color: white;
                background-color: #5A8CF2;
                size: 10px;
                border: none;
                padding: 10px 15px;
                cursor: pointer;
                border-radius: 5px;
                font-weight: bold;
            }

            #sendRequest:hover {
                background-color: #555;
                transition: 0.7s;
            }

            .search-area {
                display: flex;
                align-items: center;
            }



            .search-area input[type="text"] {
                padding: 5px;
                margin-right: 20px;
                width: 300px;
                height: 30px;
                border: 1px solid gray;
                border-radius: 10px;
            }



            .list-area {
                margin-top: 20px;
            }


            .category-area {
                display: flex;
                align-items: center;

            }

            .category-area label {
                margin-right: 5px;
            }

            .category-area select {
                padding: 5px;
                border-radius: 10px;
                border: 1px solid gray;
                height: 40px;
            }

            .category-icon {
                margin-right: 5px;
                color: #555;
            }

            .category-icon::before {
                font-family: "Font Awesome 5 Free";
                content: "\f0a5";
                font-weight: 900;
            }

            #search-icon {
                color: gray;
            }

            #delete-button {
                color: #5A8CF2;
                font-weight: bold;
                font-size: 15px;
                margin-left: 2%;
            }

            .list-area {
                margin-top: 20px;

                background: #FFFFFF;
                border: 1px solid #C4C4C4;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                border-radius: 20px;
            }

            .list-area table {
                border-collapse: collapse;
                width: 100%;


                width: 100%;

            }

            .list-area th,
            .list-area td {
                padding: 20px;
                border-bottom: 1px solid #ddd;
                text-align: left;
            }

            .list-area th {
                font-size: 20px;
                font-weight: normal;

            }

            .list-area th:first-child,
            .list-area td:first-child {
                width: 30px;
            }

            .list-area th:last-child,
            .list-area td:last-child {
                width: 100px;
            }

            .list-area td input[type="checkbox"] {
                margin: 0;
                padding: 0;
            }

            .list-area th:nth-child(3) {
                padding-left: 10%;                
                width: 150px;
            }

            .list-area th:nth-child(2) {
                padding-left: 10%;
                width: 150px;
            }

            .list-area th:nth-child(4) {
                padding-left: 10%;
                width: 150px;
            }

            .list-area td:nth-child(3) {
                padding-left: 9.5%;
                width: 150px;                
            }

            .list-area td:nth-child(2) {
                padding-left: 8%;
                width: 150px;                
            }

            .list-area td:nth-child(4) {
                padding-left: 10%;
                width: 150px;                
            }
			
			
			.list-area td:nth-child(4) {
			    white-space: nowrap;
			    text-overflow: ellipsis;
			    overflow: hidden;
			}

            .number-area {
		        text-align: center;
		        margin-top: 20px;
		        margin-bottom: 20px;
		    }
		
		    .number-area a {
		        display: inline-block;
		        margin: 5px;
		        padding: 8px 12px;
		        text-decoration: none;
		        border: none;
		        color: inherit;
		        font-size: 15px;
		    }
		
		    #previous {
		        color: #5A8CF2;
		    }
		
		    #after {
		        color: #5A8CF2;
		    }
		
		    .number-area a:hover {
		        color: #5A8CF2;
		        cursor: pointer;
		    }


            .list-area th input[type="checkbox"] {
                appearance: none;
                width: 20px;
                height: 20px;
                border: 2px solid #C4C4C4;
                border-radius: 3px;
                outline: none;
                vertical-align: middle;
                position: relative;
                top: 2px;
                cursor: pointer;
            }

            .list-area td input[type="checkbox"] {
                appearance: none;
                width: 20px;
                height: 20px;
                border: 2px solid #C4C4C4;
                border-radius: 3px;
                outline: none;
                vertical-align: middle;
                position: relative;
                top: 2px;
                cursor: pointer;
            }

            .list-area td input[type="checkbox"]:checked {
                background-color: lightgray;
                border-color: lightgray;
            }

            .list-area th input[type="checkbox"]:checked {
                background-color: lightgray;
                border-color: lightgray;
            }

            #content{
                display: grid;
                grid-template-columns: 300px 1620px;
            }

        </style>
    </head>

    <body>
        <header>
            <%@ include file="/WEB-INF/views/common/member/header.jsp" %>
        </header>


        <div id="content">
            <div id="wrap">
                <%@ include file="/WEB-INF/views/common/member/side-bar.jsp" %>
            </div>


            <div class="main-area">
                <div class="title-area">
                    <span id="title">회의록목록</span>

                    <form action="" class="search-area">
                        <label for="search" class="category-area">
                            <select name="search" id="search">
                                <option value="title">제목</option>
                                <option value="date">등록일</option>
                                
                            </select>

					

                        </label>
                        <input type="text" id="search-input">
                        <a href="" id="search-icon"><i class="fa-solid fa-magnifying-glass"></i></a>
                        
                    </form>
                   


                </div>
                <br>
                <br>
                <br>
                <br>
                <br>

					<button id="sendRequest" onclick="sendRequest();">글쓰기</button>
                <div class="list-area">
                    <table>
                        <th><input type="checkbox" name="choose" value="selectAll" onclick="selectAll(this)"></th>
                        <th>제목</th>
                        <th>등록일</th>
                        

					<c:forEach items="${voList}" var="vo">
                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>${vo.title}</td>
                            <td>${vo.enrollDate}</td>
                        </tr>
                    </c:forEach>

                        

                    </table>
                </div>
                <br>
                <br>
                <br>



            <c:set var="range" value="2" /> 
            <c:set var="startPage" value="${pv.currentPage - range > 0 ? pv.currentPage - range : 1}" />
            <c:set var="endPage" value="${startPage + 4 <= pv.maxPage ? startPage + 4 : pv.maxPage}" />
            <c:set var="startPage" value="${endPage - 4 > 0 ? endPage - 4 : 1}" />

            <div class="number-area">
                <c:if test="${pv.currentPage > 1 }">
                    <a class="pageBtn" onclick="pageMove('${startPage - 1 > 0 ? startPage - 1 : 1}');">‹</a>                </c:if>
                <c:if test="${pv.maxPage > 1 }"> 
                    <c:forEach begin="${startPage}" end="${endPage}" var="i">
                        <a class="pageBtn" class="pageBtn" onclick="pageMove('${i}');">${i}</a>
                    </c:forEach>
                </c:if>
                <c:if test="${pv.currentPage < pv.maxPage }">
                    <a class="pageBtn" onclick="pageMove('${endPage + 1 <= pv.maxPage ? endPage + 1 : pv.maxPage}');">›</a>
                </c:if>
            </div>
            </div>

        </div>

        <footer>
            <%@ include file="/WEB-INF/views/common/member/footer.jsp" %>
        </footer>

        <script>
            function selectAll(selectAll) {
                const checkboxes = document.getElementsByName('choose');

                checkboxes.forEach((checkbox) => {
                    checkbox.checked = selectAll.checked;
                })
            }
            
            const sideBar = document.querySelector("#side-bar")
            const subMenus = document.querySelectorAll(".sub-menu");
            const thirdSidebars = document.querySelectorAll(".third-sidebar");

            subMenus.forEach(subMenu => {
                subMenu.style.height = sideBar.offsetHeight + 'px';
            });

            thirdSidebars.forEach(thirdSidebar => {
                thirdSidebar.style.height = sideBar.offsetHeight + 'px';
            });
            
            
           	
           	function sendRequest(){
           		location.href="${root}/proceeding/write";
           	}
            
           	
            const pageBtn = document.querySelectorAll('.pageBtn');

            for (let btn of pageBtn) {
                if (btn.innerHTML == '${pv.currentPage}') {
                    btn.style.color = '#d9d9d9';
                }
            }

            function pageMove(pageNumber) {
                let url = new URL(window.location.href);
                url.searchParams.set('page', pageNumber);
                window.location.href = url.href;
            }

        </script>
    </body>

    </html>