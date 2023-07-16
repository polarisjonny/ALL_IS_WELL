<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

main{
    display: grid;
    grid-template-columns: 1fr 1fr;
    width: 1000px;
    height: 700px;
    border: 1px solid;
    margin: auto;
}

#div01{
    display: grid;
    grid-template-rows: 1fr 1fr;
    background-color: #5A8CF2;

    
    color: #FFFFFF;
}

#div01-1{
    font-family: 'Inter';
    font-style: normal;
    font-weight: 700;
    font-size: 50px;
    margin-top: 250px;
    margin-left: 100px;
}

#div01-2{
    margin-left: 100px;
}


#div02{
    display: grid;
    grid-template-rows: 1fr 1fr;
    text-align: center;
}

#div02-2{
    display: grid;
    grid-template-rows: 1fr 1fr 1fr 0.5fr;
}



#login{
    width: 80%;
    height: 80%;
    margin: auto;
    background-color: #5A8CF2;
    border: 0px;
    font-family: 'Inter';
    font-style: normal;
    font-weight: 700;
    font-size: 30px;
    color: #FFFFFF;
}

#div02-2 > div:last-child{
    width: 450px;
    text-align: right;
}

a{
    text-decoration-line: none;
    color: inherit;
    font-size: 15px;
}

#div02-1 > div{
    margin: auto;
    margin-top: 50px;
    width: 250px;
    height: 250px;
    border: 1px solid black;
}

#modal{
    position: absolute;
    top: 0px;
    left: 41%;
    width: 300px;
    height: 100px;
    display: none;
    grid-template-rows: 1fr 1fr 1fr 1fr;
    border: 1px solid black;
    
    
}

#modal > div:nth-child(1){
    background-color: #5A8CF2;
    font-family: 'Inter';
    font-style: normal;
    font-weight: 700;
    font-size:15px;
    color: #FFFFFF;
    display: flex;
    align-items: center;
    padding-left: 5px;
}

#modal > div:nth-child(2){
    display: flex;
    align-items: center;
    font-family: 'Inter';
    font-style: normal;
    font-size: 15px;
    background-color: #FFFFFF;
    padding-left: 5px;
}

#modal > div:nth-child(3){
    display: flex;
    align-items: center;
    font-family: 'Inter';
    font-style: normal;
    background-color: #FFFFFF;
    padding-left: 5px;
}

#modal > div:nth-child(4){
    display: flex;
    align-items: center;
    justify-content: right;
    background-color: #FFFFFF;
    padding-left: 5px;
}

#modalBtn{
    margin-right: 10px;
}
input{
    border: 0px;
    border-bottom:3px solid #5A8CF2;
    width: 80%;
    font-size: 30px;
}
#modalInput{
    font-size: 10px;
    border: 1px solid black;
}


</style>
<body>
    
    <main>
        <div id="div01">
            <div id="div01-1">ALL IS WELL</div> 
            <div id="div01-2">Connect, Collaborate, and Manage <br> for Medical Innovation</div> 
        </div>
        
        <div id="div02">
            <div id="div02-1">
                <div><img src="" alt=""></div>
            </div>
            <form action="#" id="div02-2">
                <div><input type="password" placeholder="비밀번호"></div>
                <div><input type="password" placeholder="비밀번호 재확인"></div>
                <button id="login">비밀번호 재설정</button>
                <div></div>
            </form>
            
        </div>
    </main>
     <div id="modal">
        <div>비밀번호 재설정</div>
        <div>휴대전화로 전송된 인증번호를 입력하세요.</div>
        <div><input type="text" id="modalInput"></div>
        <div>
            <button id="modalBtn">확인</button>
            <button id="modalBtn">취소</button>
        </div>

    </div>
</body>
</html>
<script>
    const login = document.querySelector('#login');
    const modal = document.querySelector('#modal');
    const body = document.querySelector('main');

    login.addEventListener('click', () => {
        modal.style.display = 'grid';
        body.style. opacity = 0.5;
      });
</script>