<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<jsp:include page="../common/header.jsp"></jsp:include>
  <!-- add more css -->
  <!-- 새로작성 css는 여기에 추가하세요. -->
  <!-- /add more css -->
  </head>	
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<jsp:include page="../common/left.jsp"></jsp:include>
		<jsp:include page="../common/top_ngb.jsp"></jsp:include>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
          
          	<div class="col-md-12 col-sm-12 col-xs-12">
			    <div class="x_panel">
				    <div class="x_title">
					    <h2>정산관리    </h2> 								
						<div class="clearfix"></div>
					</div>

					<br> 
					<div class="col-sm-12">
						<div class="x_content">
							<table id="paycal" class="table table-striped table-bordered bulk_action">
									<thead>
										<tr>
											<th><input type="checkbox" id="checkAll"></th>
											<th>상태</th>
											<th>정산번호</th>
											<th>정산명</th>
											<th>차수</th>
											<th>참석자</th>
											<th>등록자</th>
											<th>등록일자</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${empty list}">
										<tr>
											<td colspan="10">정산을 등록하세요...</td>
										</tr>
										</c:if>
										<c:if test="${!empty list}">
											<c:forEach var="paycalList" items="${list}">
											<tr>
												<td><input type="checkbox" name="box" value="${paycalList.pay_m_uid}"></td>
												<td>${paycalList.status}</td>
												<td>${paycalList.pay_m_uid}</td>
												<td class="payTitle" style="cursor:pointer;" >${paycalList.pay_title}</td>
												<td>${paycalList.no}</td>
												<td>${paycalList.pay_user_count}</td>
												<td>${paycalList.reg_id}</td>
												<td>${paycalList.reg_date}</td>
											</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
	                    </div>                    
	                    <div class="col-md-6">
	                       
	                   </div>
			           <div class="col-md-6" align="right">
				           <input type="button" class="btn btn-primary" onClick="search()" value="조회">
				            <button type="button" class="btn btn-primary btn-sm" id="paycalCfmCancel" >확정취소</button>
				       </div>                    
                   </div>
               </div>
           </div>
        </div>
        </div>
        <!-- /page content -->       
      </div>
      <!-- /main_container -->
      <jsp:include page="../common/copyright.jsp"></jsp:include>
    </div>
    <!-- /container body -->
	<jsp:include page="../common/footer.jsp"></jsp:include>    
	
    <!-- add more js -->
    <!-- 새로작성한 javascript 문서는 여기에 추가하세요. -->
    <script>
    
    <!-- 정산 상세보기 -->
	$('.payTitle').click(function(e) {
		var pay_m_uid = $(this).prev().text();
		
		location.href='paycalEdit?pay_m_uid=' + pay_m_uid;
	});	
    
    function search(){
    	location.href='paycalList';
    }
    
    //정산 취소
	$('#paycalCfmCancel').click(function(){
		if (confirm("정말 확정하시겠습니까??") == true) {
			var listArr = [];
			$('input:checkbox[name="box"]').each(function() {
				if(this.checked) {
					listArr.push(this.value);
				}
			});
			location.href='paycalCfmCancel?pay_m_uids='+listArr.join(',');		    
		} else {
			return;
		}		
	});
    
    
    </script>
    
    
    <!-- /add more js -->
	</body>
</html>