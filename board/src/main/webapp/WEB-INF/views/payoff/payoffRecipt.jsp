<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- first modal -->
		<div class="modal" id="myModal4" aria-hidden="true"
			style="display: none; z-index: 1050;">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 id="receiptTitle" class="modal-title"></h4>
					</div>
					<div class="container"></div>
					<div class="modal-body">
						<form id="ReceiptForm" enctype="multipart/form-data" class="form-horizontal form-label-left" method="post" action="upload">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12"><span id="ReceiptNo"></span> 차  영수증</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="file" class="form-control" name="fileData" placeholder="">
									<input type="hidden" id="Receipt_m_uid" name="Receipt_m_uid" value="" >
									<input type="hidden" id="Receipt_no" name="Receipt_no"  value="" >
									<input type="hidden" id="Receipt_path" name="Receipt_path"  value="" >
								</div>								
							</div>
						</form>						
					</div>
					<div id="ReceiptImg">
					
					</div>
					<div class="modal-footer">
						<button type="button" id="ReceiptCancle" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" id="ReceiptSubmit" class="btn btn-primary" data-dismiss="modal">등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /first modal -->