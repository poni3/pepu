<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="./common/header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <!-- add more css -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<style type="text/css">
#container {
	min-width: 100%;
	max-width: 100%;
	height: 100%;
	margin: 0 auto
}
</style>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
  
  
  <!-- 새로작성 css는 여기에 추가하세요. -->

  <style>
  .fontsize h2 {
  	 line-height: 1.2;
  	
  }
  .fonc th {
  text-align: center;
  }
  </style>
  <!-- /add more css -->
  </head>	
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<jsp:include page="./common/left.jsp"></jsp:include>
		<jsp:include page="./common/top_ngb.jsp"></jsp:include>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">

						<div class="">
							<div class="page-title">
								<div class="title_left">
									<h3>
										꿀85 정산시스템 <small>에 오신걸 환영합니다</small>
									</h3>
								</div>
							</div>

							<div class="clearfix"></div>

							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_title  fontsize">
											<h2>입 출고 통계 그래프</h2>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">

											<div id="container"></div>

										</div>
									</div>
								</div>




								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="x_panel">
										<div class="x_title fontsize">
											<h2>최근 출고 품목</h2>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
									<div class="row">
								</div>


								<br>
								<div class="table-responsive">
									<form role="form">
										<table id="left-table"
											class="table table-bordered bulk_action table-hover header-fixed fonc"
											style="text-align: center">
											
											<thead style="text-align: center;">
												<tr>

													<th>출고번호</th>
													<th>출고처</th>
													<th>수주일</th>
													<th>출고<br>(예정)일</th>
													<th>출고장소</th>
													<th>수령금액</th>
													<th>비고</th>
												</tr>
											</thead>


										<%-- 	<tbody>
												<c:set var ="orderFind" value="${orderFind }" />
												<c:set var="list" value="${mainOtorderpList }" />
												<c:if test="${empty orderFind }">
													<c:forEach var="List" items="${mainOtorderpList}">

														<tr>
															<td>${List.otorderp_cd }</td>
															<td>${List.release_nm}</td>
															<td>${List.releasep_date }</td>
															<td>${List.otorderp_date }</td>
															<td>${List.releasep_location }</td>
															<td>${List.otorderp_price }</td>
															<td>${List.otorderp_note }</td>
														</tr>

													</c:forEach>
												</c:if>
												<c:if test="${!empty orderFind}">
													<c:forEach var="Find" items="${orderFind}">

														<tr>
															<td><input type="checkbox" name="box"
																value="${List.orderp_cd}" onclick="cd_submit()"></td>
															<td>${Find.orderp_cd }</td>
															<td>${Find.supply }</td>
															<td>${Find.orderp_date }</td>
															<td>${Find.warehousing_date }</td>
															<td>${Find.warehousing_location }</td>
															<td>${Find.orderp_pay }</td>
															<td>${Find.orderp_note }</td>
														</tr>

													</c:forEach>
												</c:if>


											</tbody> --%>
										</table>
									</form>	
								</div>
								</div>
								</div>
								</div>
						
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="x_panel">
										<div class="x_title fontsize">
											<h2>최근 입고 품목</h2>
														<div class="clearfix"></div>
										</div>
										<div class="x_content">
									<div class="row">
								</div>


								<br>

							
									<form role="form">
										<table id="left-table"
											class="table table-bordered bulk_action table-hover header-fixed fonc"
											style="text-align: center">
											<thead style="text-align: center;">
												<tr>
													<th>발주번호</th>
													<th>공급사</th>
													<th>발주일</th>
													<th>입고<br>(예정)일</th>
													<th>입고장소</th>
													<th>지불금액</th>
													<th>비고</th>
												</tr>
											</thead>

											<%-- <tbody>
												<c:set var ="orderFind" value="${orderFind }" />
												<c:set var="mainList" value="${mainOrderList }" />
												<c:if test="${empty orderFind }">
													<c:forEach var="mainList" items="${mainOrderList}">

														<tr>
															<td>${mainList.orderp_cd }</td>
															<td>${mainList.supply_nm}</td>
															<td>${mainList.orderp_date }</td>
															<td>${mainList.warehousing_date }</td>
															<td>${mainList.storage_nm }</td>
															<td>${mainList.orderp_pay }</td>
															<td>${mainList.orderp_note }</td>
														</tr>
																
													</c:forEach>
												</c:if>
												<c:if test="${!empty orderFind}">
													<c:forEach var="Find" items="${orderFind}">

														<tr>
															<td><input type="checkbox" name="box"
																value="${List.orderp_cd}" onclick="cd_submit()"></td>
															<td>${Find.orderp_cd }</td>
															<td>${Find.supply }</td>
															<td>${Find.orderp_date }</td>
															<td>${Find.warehousing_date }</td>
															<td>${Find.warehousing_location }</td>
															<td>${Find.orderp_pay }</td>
															<td>${Find.orderp_note }</td>
														</tr>

													</c:forEach>
												</c:if>


											</tbody> --%>
										</table>
									</form>	
								</div>
								</div>
								</div>
								</div>

								<div class="col-md-4 col-sm-4 col-xs-12">
									<div class="x_panel">
										<div class="x_title fontsize">
											<h2>입고 대기 품목</h2>
													<div class="clearfix"></div>
										</div>
										<div class="x_content">

											<div class="table-responsive" >
												<table class="table table-striped table-bordered fonc">
													<thead>
														<tr>
														    <th>입고번호</th>
															<th>품명</th>
															<th>규격</th>
															<th>발주량</th>
															<th>구입가</th>
															<th>구분</th>
															<th>제조사</th>
														</tr>
													</thead>
												<%-- 	<tbody>
														<c:forEach var="mainWhList" items="${mainWarehousingsItem}">

														<tr>
															<td>${mainWhList.warehousing_cd }</td>
															<td>${mainWhList.item_nm}</td>
															<td>${mainWhList.item_size }</td>
															<td>${mainWhList.amount }</td>
															<td>${mainWhList.item_b_price }</td>
															<td>${mainWhList.item_sort }</td>
															<td>${mainWhList.item_mk }</td>
															
														</tr>
													</c:forEach>
													</tbody> --%>
												</table>

											</div>
										</div>
									</div>
								</div>

								<div class="col-md-4 col-sm-4 col-xs-12">
									<div class="x_panel">
										<div class="x_title fontsize">
											<h2>출고 대기 품목</h2>
													<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div class="table-responsive">
												<table class="table table-striped table-bordered fonc">
													<thead>
														<tr>
														    <th>출고번호</th>
															<th>품명</th>
															<th>규격</th>
															<th>발주량</th>
															<th>공급가</th>
															<th>구분</th>
															<th>제조사</th>
														</tr>
													</thead>
												<%-- 	<tbody>
														<c:forEach var="mainWhList2" items="${mainWarehousingsItem2}">
														<tr>
															<td>${mainWhList2.warehousing_cd }</td>
															<td>${mainWhList2.item_nm}</td>
															<td>${mainWhList2.item_size }</td>
															<td>${mainWhList2.amount }</td>
															<td>${mainWhList2.item_b_price }</td>
															<td>${mainWhList2.item_sort }</td>
															<td>${mainWhList2.item_mk }</td>
															
														</tr>
														</c:forEach>
													</tbody> --%>
												</table>

											</div>
										</div>
									</div>
								</div>

								<div class="col-md-4 col-sm-4 col-xs-12">
									<div class="x_panel">
										<div class="x_title fontsize">
										<h2>적정재고 미달 품목</h2>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div class="table-responsive">
												<table class="table table-striped table-bordered fonc">
													<thead>
														<tr>
															<th>구분</th>
															<th>규격</th>
															<th>제조사</th>
															<th>현재고</th>
															<th>적정재고</th>
															<th>구입가</th>
															<th>판매가</th>
														</tr>
													</thead>
													<%-- <tbody>
														<c:forEach var="itemList" items="${mainitemList }">
														<tr>
															<td>${itemList.item_sort }</td>
															<td>${itemList.item_size }</td>
															<td>${itemList.item_mk }</td>
															<td>${itemList.item_cr }</td>
															<td>${itemList.item_appro }</td>
															<td>${itemList.item_b_price }</td>
															<td>${itemList.item_s_price }</td>
														</tr>
														</c:forEach>
													</tbody> --%>
												</table>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				 
        
        <!-- /page content -->       
      </div>
      <!-- /main_container -->
      <jsp:include page="./common/copyright.jsp"></jsp:include>
    </div>
    <!-- /container body -->
	<jsp:include page="./common/footer.jsp"></jsp:include>    
    <!-- add more js -->
     <script src="vendors/js/echarts.min.js"></script>
     <script type="text/javascript">
	
	
	var srcGrpData1 = new Array();
	var srcGrpData2 = new Array();
	var srcGrpData3 = new Array();
	var srcGrpData4 = new Array();
	 
	$(document).ready(function(){
		
			srcGrpData1.push(1);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			srcGrpData1.push(2);
			                
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
			srcGrpData2.push(3);
		
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			srcGrpData3.push(4);
			                
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
			srcGrpData4.push(4;
		
		callChart(srcGrpData1, srcGrpData2, srcGrpData3, srcGrpData4);
		
	});
	
	function callChart(srcGrpData1, srcGrpData2){	
	
		Highcharts.chart('container', {
			chart: {
                zoomType: 'xy'
            },

            title: {
                text: ''
            },

            xAxis: {
                categories: [
                    '1월',
                    '2월',
                    '3월',
                    '4월',
                    '5월',
                    '6월',
                    '7월',
                    '8월',
                    '9월',
                    '10월',
                    '11월',
                    '12월'
                ],
                crosshair: true
            },
            yAxis: [{
                
            labels: {
                format: '{value}개',
            },
            min: 0,
            title: {
                text: '물량',
            }
            }, { // Secondary yAxis
            min: 0,
            title: {
                text: '금액(KRW)',
            },
            labels: {
                formatter: function() {                       
                      return Highcharts.numberFormat(Math.floor(this.value),0, ".",',') + '원' ;
                    }
            },
            opposite: true
            }],
            
            colors: ['#248AAF', '#248AAF', '#FF7F27','#FF7F27', '#FE2E2E', '#FF7F27'],
            tooltip: {
                shared: true
            },
            
            plotOptions: {
                column: {
                    stacking: 'normal'
                }
            },

            series: [ {
                name: '입고금액',
                type: 'column',
                yAxis: 1,
                data: srcGrpData2,
                tooltip: {
                    valueSuffix: ' 원'
                }
            },{
                name: '입고물량',
                type: 'spline',
                data: srcGrpData1,
                tooltip: {
                    valueSuffix: ' 개'
                }
            },{
                name: '출고금액',
                type: 'column',
                yAxis: 1,
                data: srcGrpData4,
                tooltip: {
                    valueSuffix: ' 원'
                }
            },{
                name: '출고물량',
                type: 'spline',
                data: srcGrpData3,
                tooltip: {
                    valueSuffix: ' 개'
                }
            },]
        });
		 
		}
	
	</script>
     
    <!-- /add more js -->
	</body>
</html>