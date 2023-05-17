<%-- Created by IntelliJ IDEA.
  Date: 2023-05-17 Time: 오후 4:46 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>식사 주문</title>
  <script type="text/javascript">
    window.onload = function(){
      let myForm = document.getElementById("myForm");
      myForm.onsubmit=function(){
        let c0 = document.getElementById("c0");
        if(c0.value == ''){
          alert("수량을 입력하세요.");
          return false;
        }
        let c1 = document.getElementById("c1");
        if(c1.value == ''){
          alert("수량을 입력하세요.");
          return false;
        }
        let c2 = document.getElementById("c2");
        if(c2.value == ''){
          alert("수량을 입력하세요.");
          return false;
        }
        let sum = c0.value + c1.value + c2.value;
        if(sum == 0){
          alert("세 가지 음식 중 적어도 하나는 주문해야합니다.");
          return false;
        }
      }; // end of event
    }; // end of onload
  </script>
</head>
<body>
<%--
유효성 체크 : 짜장면, 짬뽕, 볶음밥의 수량 입력 필수
                    세 가지 음식 중 하나는 꼭 주문해야 함
--%>
<div align="center">
  <h2>식사 주문</h2>
  <form action="s19_order.jsp" method="post" id="myForm">
    <table>
      <tr>
        <td class="title">식사류</td>
        <td>
          <ul>
            <li><label for="c0">짜장면</label>
              <input type="number" name="food_c0" id="c0" min="0" max="99" value="0">
            </li>
            <li><label for="c1">짬뽕</label>
              <input type="number" name="food_c1" id="c1" min="0" max="99" value="0">
            </li>
            <li><label for="c2">볶음밥</label>
              <input type="number" name="food_c2" id="c2" min="0" max="99" value="0">
            </li>
            <input type="submit" value="전송">
          </ul>
        </td>
      </tr>
    </table>
  </form>
</div>

</body>
</html>
