<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
		<!-- first modal -->
		<div class="modal" id="myModal1" aria-hidden="true"
			style="display: none; z-index: 1050;">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">정산자동계산</h4>
					</div>
					<div class="container"></div>
					<div class="modal-body">
						<form id="payoffAutoForm" class="form-horizontal form-label-left" method="POST" action="paycalAutoUpdate">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">정산명</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									${paycalDto.pay_title}
								</div>								
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">차수</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									 <select name="no" class="form-control" id="no" >
								       <option value="${paycalDto.no}">${paycalDto.no} 차</option>
								     </select>
								</div>	
							</div>
						
							<hr>
							<c:forEach var="item" varStatus="i" begin="1" end="${paycalDto.no}" step="1">
							  <c:if test="${item == 1}">
							 	<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">1차 안주</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="one_anju" id="one_anju" value="0" placeholder="안주">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">1차 술</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="one_alcol" id="one_alcol" value="0" placeholder="술">
									</div>								
							    </div>
							    
							    <hr>
							  </c:if>
							  <c:if test="${item == 2}">
							  	<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">2차 안주</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="two_anju" id="two_anju" value="0" placeholder="안주">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">2차 술</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="two_alcol"  id="two_alcol" value="0" placeholder="술">
									</div>								
								</div>
								
								<hr>
							  </c:if>
							  <c:if test="${item == 3}">
							  	<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">3차 안주</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="tre_anju" id="tre_anju" value="0" placeholder="안주">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">3차 술</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="tre_alcol"  id="tre_alcol" value="0"  placeholder="술">
									</div>								
								</div>
								
								<hr>
							  </c:if>
							  <c:if test="${item == 4}">
							  	<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">4차 안주</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="for_anju" id="for_anju" value="0" placeholder="안주">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">4차 술</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="for_alcol"  id="for_alcol" value="0" placeholder="술">
									</div>								
								</div>
								
								<hr>
							  </c:if>
							  <c:if test="${item == 5}">
								  <div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">5차 안주</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="fiv_anju" id="fiv_anju" value="0"  placeholder="안주">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">5차 술</label>
									<div class="col-md-4 col-sm-4 col-xs-12">
										<input type="text" class="form-control" name="fiv_alcol"  id="fiv_alcol" value="0" placeholder="술">
									</div>								
								</div>
							  </c:if>
							</c:forEach>
							
							<input type="hidden" name="pay_m_uid" id="pay_m_uid" value="${paycalDto.pay_m_uid}" />
						</form>						
					</div>
					<div class="modal-footer">
						<button type="button" id="payoffAutoCancle" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" id="payoffAutoSubmit" class="btn btn-primary" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /first modal -->