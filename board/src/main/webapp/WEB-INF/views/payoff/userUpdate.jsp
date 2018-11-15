<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- first modal -->
		<div class="modal" id="myModal3" aria-hidden="true"
			style="display: none; z-index: 1050;">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">꿀 85 정산등록(사용자)</h4>
					</div>
					<div class="container"></div>
					<div class="modal-body">
						<div class="table-responsive">
						<table id="payoff-userList" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th><input type="checkbox" id="check-all"></th>
									<th>닉네임</th>
									<th>기수</th>
								</tr>
							</thead>
							<tbody id = "result_view">								
							</tbody>
						</table>
					</div>				
					</div>
					<div class="modal-footer">
						<button type="button" id="payoffUserModifyCancle" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" id="payoffUserModifySubmit" class="btn btn-primary" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /first modal -->