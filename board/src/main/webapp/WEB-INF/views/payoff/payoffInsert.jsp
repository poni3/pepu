<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- first modal -->
		<div class="modal" id="myModal1" aria-hidden="true"
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
						<form id="payoffForm" class="form-horizontal form-label-left" method="post" action="payoffInsert">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">정산명</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="pay_title" placeholder="">
								</div>								
							</div>
							
						</form>						
					</div>
					<div class="modal-footer">
						<button type="button" id="payoffCancle" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" id="payoffSubmit" class="btn btn-primary" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /first modal -->