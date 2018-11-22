<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- add more css -->
<!-- 새로작성 css는 여기에 추가하세요. -->

 <%
    ServletContext context = request.getServletContext();
    String path = context.getRealPath("/") + "upload";
    
    %>
<style>
.left_zero {
	padding-left : 0;
}
.ot_cd {
	cursor: pointer;
}
</style>
<!-- /add more css -->
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<jsp:include page="../common/left.jsp"></jsp:include>
			<jsp:include page="../common/top_ngb.jsp"></jsp:include>
			<!-- page content -->
			<div class="right_col" role="main">
				<!-- 수주명세서 왼쪽 표 START -->
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>정산등록</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content fixed-panel">
								<div class="row">
									<div class="col-md-12 left_zero">
									<!-- <p class="text-muted font-13 m-b-30">
										<label class="check-inline"><input type="checkbox">전체</label>
										<label class="check-inline"><input type="checkbox">수주</label>
										<label class="check-inline"><input type="checkbox">진행</label>
										<label class="check-inline"><input type="checkbox">취소</label>
										<label class="check-inline"><input type="checkbox">완납</label>
									</p> -->
									</div>
								</div>
								<!-- 셀렉트박스 START-->
								<div class="row">
									<form role="form">
										<div class="col-md-2" style="padding-left: 0">
											<select class="form-control">
												<option>검색</option>
												<option>정산명</option>
											</select>
											<input type="hidden" id="realPath" name="realPath"  value="<%=path %>" >
										</div><!-- 셀렉트박스 END -->
										<!-- 검색폼 START -->
										<div class="col-md-4" style="padding-left: 0">
											<input type="text" class="form-control" name="serch_nm"
												placeholder="검색어 입력란">
										</div>
									<!-- 	<div class="col-md-4">
											<button type="submit" class="btn btn-primary">검색</button>
										</div> -->
									</form><!-- 검색폼 끝 -->
								</div>
								<br>
								<div class="row">
								<table id="payoffList" class="table table-striped table-bordered bulk_action">
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
											<c:forEach var="payoffList" items="${list}">
											<tr>
												<td><input type="checkbox" name="box" value="${payoffList.pay_m_uid}"></td>
												<td class="ot_cd">${payoffList.status}</td>
												<td>${payoffList.pay_m_uid}</td>
												<td>${payoffList.pay_title}</td>
												<td>${payoffList.no}</td>
												<td>${payoffList.pay_user_count}</td>
												<td>${payoffList.reg_id}</td>
												<td>${payoffList.reg_date}</td>
											</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
								</div>
								
								<button type="button" data-toggle="modal" data-target="#myModal1" class="btn btn-success btn-sm">새 정산 등록</button>
								<button type="button" data-toggle="modal" data-target="#myModal2" class="btn btn-primary btn-sm" id="payoffModify" disabled="disabled">수정</button>
								<button type="button" data-toggle="modal" data-target="#myModal3" class="btn btn-primary btn-sm" id="payoffuserUpdate" disabled="disabled">꿀85 등록</button>
								<button type="button" data-toggle="modal" data-target="#myModal3" class="btn btn-primary btn-sm" id="payoffOldUserUpdate" disabled="disabled">뒷방 등록</button>
								<button type="button" class="btn btn-danger btn-sm" id="payoffDelete" disabled="disabled">삭제</button>
								<button type="button" class="btn btn-primary btn-sm" id="payoffCfmUpdate" >확정</button>
							</div>
						</div>
					</div>
					
					<!-- 수주관리 오른쪽 표 STATR -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
 							<div class="x_title">
								<h2 id="user_title">정산명</h2><br>
								<h2 id="pay_m_uid_trans">정산번호</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
	                            <form class="form-horizontal form-label-left">
									<div class="form-group">
		                                <div class="col-md-4 col-sm-4 col-xs-12">
											 <select name="user_no" class="form-control" id="user_no" >
										       <option value="">차수</option>
										       <option value="1">1차</option>
										       <option value="2">2차</option>
										       <option value="3">3차</option>
										       <option value="4">4차</option>
										       <option value="5">5차</option>
										     </select>
										</div>
									</div>					
								</form>
								
								<!-- <form class="form-horizontal form-label-left">
									<div class="form-group">
										<label class="control-label col-md-3" for="otorderp_cd">닉네임</label>
										<div class="col-md-3">
											<input type="text" id="otorderp_cd" class="form-control col-md-7 col-xs-12" readonly="readonly">
										</div>
									</div>								
								</form> -->

								<div class="table-responsive">
									<table id="payoff-userList" class="table table-striped table-bordered">
										<thead>
											<tr>
												<th><input type="checkbox" id="check-all"></th>
												<th>닉네임</th>
												<th>기수</th>
												<th>1차</th>
												<th>2차</th>
												<th>3차</th>
												<th>4차</th>												
												<th>5차</th>			
												<th>비고</th>
											</tr>
										</thead>
										<tbody id = "user_result_view">								
											<!-- itemList -->
										</tbody>
									</table>
								</div>
								
								<button type="button" id="otorderp_sModify" class="btn btn-primary btn-sm"  onClick="updateMeal('ALL')"  >올먹</button>
								<button type="button" id="otorderp_sModify" class="btn btn-primary btn-sm"  onClick="updateMeal('MEL')"  >안주</button>
								<button type="button" id="otorderp_sModify" class="btn btn-primary btn-sm"  onClick="updateMeal('COL')"  >술만</button>
								<button type="button" id="otorderp_sModify" class="btn btn-primary btn-sm"  onClick="updateMeal('ANM')"  >안먹</button>
								<button type="button" id="otorderp_sModify" class="btn btn-primary btn-sm"  onClick="updateMeal('')"    >미참가</button>
								
								<button type="button" id="otorderp_sModify" class="btn btn-primary btn-sm" disabled="disabled">수정</button>
								<button type="button" id="payoffUsersDelete" class="btn btn-danger btn-sm" >삭제</button>

                                <button type="button" data-toggle="modal" data-target="#myModal4" id="payoffReceipt" class="btn btn-success btn-sm" >영수증 등록</button>	
							</div>
						</div>
					</div>
				</div>
				<!-- 발주명세서 오른쪽 표 END -->
			</div>
			<!-- /page_content -->
		</div>
		<!-- /main_container -->
		
		<!-- modal -->
		<jsp:include page="./payoffInsert.jsp"></jsp:include>
		<jsp:include page="./placeUpdate.jsp"></jsp:include>
		<jsp:include page="./userUpdate.jsp"></jsp:include>
		<jsp:include page="./payoffRecipt.jsp"></jsp:include>
		<jsp:include page="../common/copyright.jsp"></jsp:include>
	</div>
	<!-- /container body -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- add more js -->
	<!-- 새로작성한 javascript 문서는 여기에 추가하세요. -->
	<script>
	
	//정산등록
	$('#payoffSubmit').click(function() {
		$('#payoffForm').submit();
	});
	//정산 취소
	$('#payoffCancle').click(function() {
		$('#payoffForm').each(function() {
			this.reset();
		});
	});
	
	//정산장소 취소
	$('#payoffModifyCancle').click(function() {
		$('#payoffModifyForm').each(function() {
			this.reset();
		});
	});
	
	
	//정산  수정
	$('#payoffModify').click(function() {
		$('input:checkbox[name="box"]').each(function() {
			if(this.checked){
				var temp = this.value;				
				$.ajax({
					url:'payoffGetOne?pay_m_uid='+temp,
					method : 'get',
					dataType : 'text',
					error : function(data) {
						alert(실패);						
					},
					success : function(responseData) {
						var data = JSON.parse(responseData);
						
						$('#pay_title').val(data.list.pay_title);
						$('#no').val(data.list.no);
						$('#total_amount').val(data.list.total_amount);
						$('#one_place').val(data.list.one_place);
						$('#one_amount').val(data.list.one_amount);
						$('#two_place').val(data.list.two_place);
						$('#two_amount').val(data.list.two_amount);
						$('#tre_place').val(data.list.tre_place);
						$('#tre_amount').val(data.list.tre_amount);
						$('#for_place').val(data.list.for_place);
						$('#for_amount').val(data.list.for_amount);
						$('#fiv_place').val(data.list.fiv_place);
						$('#fiv_amount').val(data.list.fiv_amount);
						$('#pay_m_uid').val(data.list.pay_m_uid);
						
					}			
				});
			}
		});
	});
	
	$('#payoffModifySubmit').click(function() {
		$('#payoffModifyForm').submit();
	})
	
	//정산 삭제
	$('#payoffDelete').click(function(){
		if (confirm("정말 삭제하시겠습니까??") == true) {
			var listArr = [];
			$('input:checkbox[name="box"]').each(function() {
				if(this.checked) {
					listArr.push(this.value);
				}
			});
			location.href='payoffDelte?pay_m_uid='+listArr.join(',');		    
		} else {
			return;
		}		
	});
	
	
	//사용자등록
	$('#payoffuserUpdate').click(function() {
		$('input:checkbox[name="box"]').each(function() {
			 $('#result_view').text('');
			if(this.checked){
				var temp = this.value;				
				$.ajax({
					url:'payoffUserGet?pay_m_uid='+temp,
					method : 'get',
					dataType : 'text',
					error : function(data) {
						alert(실패);						
					},
					success : function(responseData) {
						var data = JSON.parse(responseData);
						
						for(var i =0; i < data.list.length; i++){
							
							var tableData = '<tr><td><input type="checkbox" name="u_box" value="' + data.list[i].u_uid + '"></td>'
							                 + '<td>'+ data.list[i].name +'</td>'
							                 + '<td>'+ data.list[i].rida +' 기</td></tr>';
							                 
							                 $('#result_view').append(tableData);
						}
					}			
				});
			}
		});
	});
	
	//사용자등록
	$('#payoffOldUserUpdate').click(function() {
		$('input:checkbox[name="box"]').each(function() {
			 $('#result_view').text('');
			if(this.checked){
				var temp = this.value;				
				$.ajax({
					url:'payoffOldUserGet?pay_m_uid='+temp,
					method : 'get',
					dataType : 'text',
					error : function(data) {
						alert(실패);						
					},
					success : function(responseData) {
						var data = JSON.parse(responseData);
						
						for(var i =0; i < data.list.length; i++){
							
							var tableData = '<tr><td><input type="checkbox" name="u_box" value="' + data.list[i].u_uid + '"></td>'
							                 + '<td>'+ data.list[i].name +'</td>'
							                 + '<td>'+ data.list[i].rida +' 기</td></tr>';
							                 
							                 $('#result_view').append(tableData);
						}
					}			
				});
			}
		});
	});
	
	$('#payoffUserModifySubmit').click(function() {
		var uids = [];
		var m_uid;
		$('input:checkbox[name="u_box"]').each(function() {
			if(this.checked){
				uids.push(this.value);
			}
		});
		
		$('input:checkbox[name="box"]').each(function() {
			if(this.checked){
				m_uid = this.value;
			}
		});
		
		location.href='payUserUpdate?pay_m_uid='+m_uid + '&uids=' + uids.join(',');	
		
	});
	
	//리스트 클릭 시 
	$('.ot_cd').click(function(e) {
		var pay_m_uid = $(this).next().text();
		var pay_m_title = $(this).next().next().text();
		
		$('#user_result_view').text('');
		$('#user_title').text(pay_m_title);
		$('#pay_m_uid_trans').text(pay_m_uid);
		 $("#user_no").val('');
		
		editUserAjax(pay_m_uid);
	});	
	
	
	function editUserAjax(pay_m_uid){
		$.ajax({
			url:'payoffUserList?pay_m_uid='+pay_m_uid,
			method : 'get',
			dataType : 'text',
			error : function(data) {
				alert('fail');
			},
			success : function(responseData) {
				var data = JSON.parse(responseData);				
				
				for(var i =0; i < data.list.length; i++){
					
					var tableData = '<tr><td><input type="checkbox" name="m_u_box" value="' + data.list[i].pay_u_uid + '"></td>'
					                 + '<td>'+ data.list[i].name +'</td>'
					                 + '<td>'+ data.list[i].rida +' 기</td>'
					                 + '<td>'+ nullDelete(data.list[i].one_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].two_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].tre_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].for_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].fiv_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].remark) +'</td></tr>';
					                 
					                 $('#user_result_view').append(tableData);
				}
				
			}			
		});
	}
	
	function nullDelete(tempValue){
		if(tempValue == null){
			return '';
		} 
		
		return tempValue;
	}
	
	
	//정산 삭제
	$('#payoffCfmUpdate').click(function(){
		if (confirm("정말 확정하시겠습니까??") == true) {
			var listArr = [];
			$('input:checkbox[name="box"]').each(function() {
				if(this.checked) {
					listArr.push(this.value);
				}
			});
			location.href='payoffCfmUpdate?pay_m_uids='+listArr.join(',');		    
		} else {
			return;
		}		
	});
	
	
	
	//차수별 먹은거 업데이트
	function updateMeal(mealValue){
		
		var user_no = $("#user_no").val();
		if($("#user_no").val() == ''){
			alert('차수를 선택해 주세요.');
			return false;
		}
		
		if(!confirm($("#user_no").val() + '차에 ' + mealValue + '으로 등록 하시겠습니까?')){
			return false;
		}
		
		var uids = [];
		var pay_m_uid = $("#pay_m_uid_trans").text();
		$('input:checkbox[name="m_u_box"]').each(function() {
			if(this.checked){
				uids.push(this.value);
			}
		});
		
		if(pay_m_uid == '' || uids.length == 0){
			alert('데이터 설정이 잘 못 되었습니다.');
			return false;
		}
		
		$.ajax({
			url:'payoffUserStatusUpdate?pay_m_uid='+ pay_m_uid + '&pay_u_uids=' + uids + '&mealCode=' + mealValue + '&user_no=' + user_no,
			method : 'get',
			dataType : 'text',
			error : function(data) {
				alert(실패);						
			},
			
			success : function(responseData) {
				var data = JSON.parse(responseData);
				$('#user_result_view').text('');
				for(var i =0; i < data.list.length; i++){
					var tableData = '<tr><td><input type="checkbox" name="m_u_box" value="' + data.list[i].pay_u_uid + '"></td>'
					                 + '<td>'+ data.list[i].name +'</td>'
					                 + '<td>'+ data.list[i].rida +' 기</td>'
					                 + '<td>'+ nullDelete(data.list[i].one_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].two_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].tre_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].for_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].fiv_meal) +'</td>'
					                 + '<td>'+ nullDelete(data.list[i].remark) +'</td></tr>';
					                 
					                 $('#user_result_view').append(tableData);
				}
			}			
		});
	}
	
	//정산 삭제
	$('#payoffUsersDelete').click(function(){
		if (confirm("정말 삭제하시겠습니까??") == true) {
			var listArr = [];
			$('input:checkbox[name="m_u_box"]').each(function() {
				if(this.checked) {
					listArr.push(this.value);
				}
			});
			location.href='payoffUsersDelete?pay_u_uids='+listArr.join(',');		    
		} else {
			return;
		}		
	});
	
	//checkbox 전체 선택
	$('#checkAll').click(function(){
        if ($('#checkAll').prop('checked')) {
            $('input[name=box]').prop('checked',true);
            $('#payoffModify').attr('disabled',true);
            $('#payoffuserUpdate').attr('disabled',true);
            $('#payoffOldUserUpdate').attr('disabled',true);
            $('#payoffDelete').attr('disabled',false);
        } else {
            $('input[name=box]').prop('checked',false);
            $('#payoffDelete').attr('disabled',true);
        }
    });
	
	//1개이상 선택 시 수정버튼 disabled
	$('input:checkbox[name=box]').click(function() {
		var count = $('input:checkbox[name=box]:checked').length; 
		if (count>1) {
			$('#payoffModify').attr('disabled',true);
			$('#payoffuserUpdate').attr('disabled',true);
			$('#payoffOldUserUpdate').attr('disabled',true);
			$('#payoffDelete').attr('disabled',false);
		} else if (count===0) {
			$('#payoffModify').attr('disabled',true);
			$('#payoffuserUpdate').attr('disabled',true);
			$('#payoffOldUserUpdate').attr('disabled',true);
			$('#payoffDelete').attr('disabled',true);
		} else {
			$('#payoffModify').attr('disabled',false);
			$('#payoffuserUpdate').attr('disabled',false);
			$('#payoffOldUserUpdate').attr('disabled',false);
			$('#payoffDelete').attr('disabled',false);			
		}
	});
	
	
	//영수증 등록
	$('#payoffReceipt').click(function(){
		
		var user_no = $("#user_no").val();
		if(user_no == ''){
			alert('차수를 선택해 주세요.');
			return false;
		}
		
		var uids = [];
		var pay_m_uid = $("#pay_m_uid_trans").text();
		
		if(pay_m_uid == '' || pay_m_uid == '정산번호'){
			alert('데이터 설정이 잘 못 되었습니다.');
			return false;
		}
		
		//업로드창 이름설정
		$("#receiptTitle").text($("#user_title").text());
		//업로드창 차수 설정
		$("#ReceiptNo").text(user_no);
		
		$("#Receipt_m_uid").val(pay_m_uid);
		$("#Receipt_no").val(user_no);
		
		//업로드 패스 설정
		$("#Receipt_path").val($("#realPath").val());
		
		//img뿌리기
		//<img style="width: 100%; object-fit: ReceiptImg;" src="images/cropper.jpg" />
		
		$("#ReceiptImg").text('');
		
		var imgHtml = '<img style="width: 100%; object-fit: ReceiptImg;" src="upload/' + pay_m_uid + '_' + user_no + '_receipt.jpg" onerror="this.style.display=\'none\'" />';
			$("#ReceiptImg").append(imgHtml);
	});
	
	//영수증등록
	$('#ReceiptSubmit').click(function() {
		$('#ReceiptForm').submit();
	});
	//영수증 취소
	$('#ReceiptCancle').click(function() {
		$('#ReceiptForm').each(function() {
			this.reset();
		});
	});
	</script>
	<!-- /add more js -->
</body>
</html>