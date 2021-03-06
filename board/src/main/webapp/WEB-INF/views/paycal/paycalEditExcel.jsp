<%@ page language="java" contentType="application/vnd.ms-excel; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<% 
  
  String path = request.getRequestURL().toString().replace(request.getRequestURI(),"");
  

  String filename = (String)request.getAttribute("fileName");
  response.setHeader("Content-Type", "application/vnd.ms-xls");
  response.setHeader("Content-Disposition", "inline; filename=" + filename + ".xls");
%>​ 
</head>
<body>
	<div class="col-md-12 col-sm-12 col-xs-12">
			    <div class="x_panel">
					<div class="col-sm-12">
						<div class="x_content">
							
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_title  fontsize">
											<h2>${paycalDto.pay_title} (총 : ${paycalDto.no} 차)</h2>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">

											<div id="container">
												정산금액 <br>
												<c:forEach var="item" varStatus="i" begin="1" end="${paycalDto.no}" step="1">
											       <c:if test="${item == 1}">
											       ${item}차   :  ${paycalDto.one_place}  = ${paycalDto.one_amount}원 <br>
											       </c:if>
											       <c:if test="${item == 2}">
											       ${item}차   :  ${paycalDto.two_place}  = ${paycalDto.two_amount}원 <br>
											       </c:if>
											       <c:if test="${item == 3}">
											       ${item}차   :  ${paycalDto.tre_place}  = ${paycalDto.tre_amount}원 <br>
											       </c:if>
											       <c:if test="${item == 4}">
											       ${item}차   :  ${paycalDto.for_place}  = ${paycalDto.for_amount}원 <br>
											       </c:if>
											       <c:if test="${item == 5}">
											       ${item}차   :  ${paycalDto.fiv_place}  = ${paycalDto.fiv_amount}원 <br>
											       </c:if>
											     </c:forEach>
											     총액 : ${paycalDto.total_amount} 원
											     
											</div>
											

										</div>
									</div>
								</div>
							
							<table id="paycal" class="table table-striped table-bordered bulk_action">
									<thead>
										<tr>
											<th>닉네임</th>
											<c:forEach var="item" varStatus="i" begin="1" end="${paycalDto.no}" step="1">
											       <th>${item} 차</th>
											       <th>비고</th>
											 </c:forEach>
											 <th>합계</th>
											 <th>입금현황</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${empty list}">
										<tr>
											<td colspan="10">없옹...</td>
										</tr>
										</c:if>
										<c:if test="${!empty list}">
											<c:forEach var="paycalList" items="${list}">
											<tr>
												<td>${paycalList.name}</td>
												<td>${paycalList.one_amount}</td>
												<td>${paycalList.one_meal}</td>
												<c:if test="${paycalDto.no > 1}">
													<td>${paycalList.two_amount}</td>
													<td>${paycalList.two_meal}</td>
												</c:if>
												<c:if test="${paycalDto.no > 2}">
													<td>${paycalList.tre_amount}</td>
													<td>${paycalList.tre_meal}</td>
												</c:if>
												<c:if test="${paycalDto.no > 3}">
													<td>${paycalList.for_amount}</td>
													<td>${paycalList.for_meal}</td>
												</c:if>
												<c:if test="${paycalDto.no > 4}">
													<td>${paycalList.fiv_amount}</td>
													<td>${paycalList.fiv_meal}</td>
												</c:if>
												<td>${paycalList.user_total_amount}</td>
												<td>${paycalList.remark}</td>
											</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
	                    	</div>   
	                    	<br />
	                    	<br />
	                    	<c:forEach var="item" varStatus="i" begin="1" end="${paycalDto.no}" step="1">
							   <img src="<%=path %>/board/upload/${paycalDto.pay_m_uid}_${item}_receipt.jpg" onerror="this.style.display=\'none\'" class="img-circle profile_img">
								  <br />
							</c:forEach>
	                    	                 
                   </div>
               </div>
           </div>
        </div>




</body>
</html>