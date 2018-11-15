<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- first modal -->
		<div class="modal" id="myModal2" aria-hidden="true"
			style="display: none; z-index: 1050;">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">꿀 85 정산등록</h4>
					</div>
					<div class="container"></div>
					<div class="modal-body">
						<form id="payoffModifyForm" class="form-horizontal form-label-left" action="payoffUpdate">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">정산명</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="pay_title"  id="pay_title" placeholder="">
								</div>								
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">차수</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									 <select name="no" class="form-control" id="no" >
								       <option value="1">1차</option>
								       <option value="2">2차</option>
								       <option value="3">3차</option>
								       <option value="4">4차</option>
								       <option value="5">5차</option>
								     </select>
								</div>	
								<label class="control-label col-md-2 col-sm-2 col-xs-12">총금액</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="total_amount" id="total_amount" placeholder="">
								</div>								
							</div>
						
							<hr>
							<hr>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">1차 장소</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="one_place" id="one_place" placeholder="장소">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">1차 금액</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="one_amount" id="one_amount" placeholder="금액">
								</div>								
							</div>
							
							<hr>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">2차 장소</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="two_place" id="two_place" placeholder="장소">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">2차 금액</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="two_amount"  id="two_amount" placeholder="금액">
								</div>								
							</div>
							
							<hr>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">3차 장소</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="tre_place" id="tre_place" placeholder="장소">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">3차 금액</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="tre_amount"  id="tre_amount" placeholder="금액">
								</div>								
							</div>
							
							<hr>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">4차 장소</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="for_place" id="for_place"  placeholder="장소">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">4차 금액</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="for_amount"  id="for_amount" placeholder="금액">
								</div>								
							</div>
							
							<hr>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">5차 장소</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="fiv_place" id="fiv_place" placeholder="장소">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">5차 금액</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="fiv_amount"  id="fiv_amount" placeholder="금액">
								</div>								
							</div>
							
							<input type="hidden" name="pay_m_uid" id="pay_m_uid" />
						</form>						
					</div>
					<div class="modal-footer">
						<button type="button" id="payoffModifyCancle" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" id="payoffModifySubmit" class="btn btn-primary" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /first modal -->