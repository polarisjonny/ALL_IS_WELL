<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   
   #wrap{
      width: 1920px;
      height: 1500px;
      display: grid;
      grid-template-columns: 300px 1620px;
   }

   .main-area {
        width: 1200px;
        height: 85%;
        margin: auto;
        margin-top: 100px;
    }

    #listBtnDiv{
        text-align: right;
        padding-right: 10%;
        padding-top: 50px;
        padding-bottom: 50px;
    }

    #listBtn{
        width: 80px;
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

    #listBtn:hover{
        background-color: #555;
        transition: 0.7s;
    }

    #vacation-application{
        width: 80%;
        height: 77%;
        border: 1px solid black;
        margin: auto;
    }

    #title{
        padding-top: 50px;
        text-align: center;
        font-size: 36px;
    }

    #contain-top{
        display: grid;
        grid-template-columns: 1fr 1fr;
        margin-top: 150px;
    }

    #info{
        border-collapse: collapse;
        width: 300px;
        height: 200px;
        font-size: 20px;
        margin-left: 100px;
        text-align: center;
    }

    #approval{
        border-collapse: collapse;
        text-align: center;
        width: 600px;
        height: 300px;
    }

    #approval tr th{
        font-size: 25px;
    }

    #approval-title{
        width: 185px;
        height: 40px;
    }

    #stamp{
        border-bottom: none;
    }

    #stamp td{
        height: 180px;
    }

    #reasonDiv{
        margin: auto;
        margin-top: 50px;
        width: 1000px;
        height: 500px;

        border: 1px solid black;

        display: grid;
        grid-template-columns: 2fr 9fr;
        grid-template-rows: 1fr 9fr;
    }

    #reasonDiv div{
        box-sizing: border-box;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
        font-size: 25px;
        font-weight: bold;
    }

    .top, .top-side{
        border-bottom: 1px solid black;
    }

    .top, .bottom{
        border-right: 1px solid black;
    }

    #buttonDiv{
        text-align: right;
        margin-right: 180px;
        margin-top: 80px;
    }

    #inventory-div{
        margin-top: 100px;
        height: 600px;
    }

    #inventory-table{
        border-collapse: collapse;
        font-size: 20px;
        margin: auto;
        width: 90%;
        height: 70%;
    }

    #inventory-table th:first-child{
        width: 80px;
    }

    input[type=number]{
        height: 20px;
    }

    .add-btn {
        background-color: #C8C8C8;
        border: none;
        color: white;
        text-align: right;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 0px 2px;
        cursor:pointer;
        border-radius: 4px;
        padding: 4px 8px;
    }

    .add-btn:hover{
        background-color: #909090;
        transition: 0.7ss;
    }

    .subtract-btn {
        background-color: #C8C8C8;
        border: none;
        color: white;
        text-align: right;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 0px 2px;
        cursor:pointer;
        border-radius: 4px;
        padding: 4px 8px;
    }

    .subtract-btn:hover{
        background-color: #909090;
        transition: 0.7ss;
    }

</style>
</head>
<body>
   
   <header>
      <%@include file="/WEB-INF/views/common/member/header.jsp" %>
   </header>
   
   <main id="wrap">
        <div>
            <%@ include file="/WEB-INF/views/common/member/side-bar.jsp" %>
        </div>
        <div id="main-area">
            <div id="listBtnDiv">
                <button id="listBtn">목록</button>
            </div>
            <div id="vacation-application">
                <div id="title">재고신청서</div>
                <div id="contain-top">
                    <div id="document-info">
                        <table border="1" id="info">
                            <tr>
                                <th>문서번호</th>
                                <td>150</td>
                            </tr>
                            <tr>
                                <th>작성일자</th>
                                <td>2023-07-05(월)</td>
                            </tr>
                            <tr>
                                <th>소속부서</th>
                                <td>임상병리학과</td>
                            </tr>
                            <tr>
                                <th>작 성 자</th>
                                <td>김간호</td>
                            </tr>
                        </table>
                    </div>
                    <div id="approval-column">
                        <table border="1" id="approval">
                            <tr>
                                <th rowspan="4">결재</th>
                                <th id="approval-title">담당</th>
                                <th id="approval-title">중간 결재자</th>
                                <th id="approval-title">최종 결재자</th>
                            </tr>
                            <tr id="stamp">
                                <td ></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr id="name">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr id="date">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="inventory-div">
                    <table border="1" id="inventory-table">
                        <tr>
                            <th>품목명</th>
                            <th>개수</th>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; position: relative;">
                                <select style="position: absolute; left: 50%; transform: translateX(-50%);" disabled>
                                    <option value="">가위</option>
                                </select>
                            </td>
                            <td style="text-align: left; padding-left: 10px;">
                                <input type="number" name="inventoryNum" value="1" disabled>
                                <button class="subtract-btn" onclick="disableSelectAndInput(this)" style="display: none; position: static">-</button>
                            </td>
                        </tr>                    
                    </table>
                </div>
            </div>
        </div>
   </main>

   <footer>
      <%@ include file="/WEB-INF/views/common/member/footer.jsp" %>
   </footer>

   <script>

    </script>

</body>
</html>


