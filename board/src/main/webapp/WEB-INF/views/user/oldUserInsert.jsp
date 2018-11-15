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
						<h4 class="modal-title">뒷방 등록</h4>
					</div>
					<div class="container"></div>
					<div class="modal-body">
						<form id="userForm" class="form-horizontal form-label-left" action="userInsert">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">ID</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="id" placeholder="미입력시 자동입력">
								</div>								
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">닉네임</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="name" placeholder="닉네임">
								</div>								
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">기수</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control" name="rida" placeholder="숫자만 입력" value=""  >
								</div>								
							</div>
							
						</form>						
					</div>
					<div class="modal-footer">
						<button type="button" id="otorderCancle" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" id="userSubmit" class="btn btn-primary" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /first modal -->