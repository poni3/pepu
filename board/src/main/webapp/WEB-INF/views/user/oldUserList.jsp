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
					    <h2>뒷방 </h2> 								
						<div class="clearfix"></div>
					</div>
         <!-- 검색조건 넣어야함 -->
					<br> 
					<div class="col-sm-12">
						<div class="x_content">
							<table id="datatable-checkbox" class="table table-striped table-bordered bulk_action dataTable no-footer" role="grid" aria-describedby="datatable-checkbox_info">
								<thead>
									<tr>
										 <th><input type="checkbox" id="checkAll"></th>
										 <th>닉넴임</th>
										 <th>기수</th>
										 <th>ID</th>
										 <th>관리번호</th>
									</tr>
				                </thead>
				                <tbody>
									<c:set var="list" value="${list }"/>
										<c:if test="${!empty list }">
											<c:forEach var="List" items="${list }">
												<tr>
												<th><input type="checkbox" name="box" value="${List.u_uid }"></th>					
													<td>${List.name }</td>
													<td>${List.rida } 기</td>
													<td>${List.id }</td>
													<td>${List.u_uid }</td>
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
				           <!-- <input type="button" data-toggle="modal" data-target="#myModal1" class="btn btn-success btn-sm"  value="등록"> -->
				           <button type="button" data-toggle="modal" data-target="#myModal3" id="otorderp_sAdd" onClick="insertUser()"  class="btn btn-primary btn-sm" >등록</button>
				          <!--  <input type="button" class="btn btn-primary" value="수정"> -->
				           <input type="button" class="btn btn-primary" onClick="userDelete()" value="삭제">
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
	
	<jsp:include page="./oldUserInsert.jsp"></jsp:include>
    <!-- add more js -->
    <!-- 새로작성한 javascript 문서는 여기에 추가하세요. -->
    <script>
    function search(){
    	location.href='oldUserList';
    }
    
    function userDelete(){
    	
    	if( $(":checkbox[name='box']:checked").length == 0 ){
		    alert("삭제 할 항목을 체크해주세요.");
		    return false;
		}
    	
    	var listArr = [];
		$('input:checkbox[name="box"]').each(function(){
			if(this.checked) {
				listArr.push(this.value);
			}
		});
    	
    	location.href='oldUserDelete?u_uids=' + listArr.join(',');
    }
    
    
    function insertUser(){
    	$('#myModal1').modal('show');
    }
    
    
	$('#userSubmit').click(function() {
		$('#userForm').submit();
	});
    
    </script>
    
    
    <!-- /add more js -->
	</body>
</html>