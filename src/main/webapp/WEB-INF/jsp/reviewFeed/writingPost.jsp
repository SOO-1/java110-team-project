<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Modal -->

<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document" id="rModal">
		<form action="add" method="post" enctype="multipart/form-data">
			<div class="modal-content">

				<div class="modal-header">
				
					<h5 class="modal-title">리뷰 작성하기</h5>
					<!-- 영화 검색 -->
					<input type="hidden" id="pstTypeNo" name="pstTypeNo">
					<div class="onlyMovie" style="padding: 0 1rem;">
						<div class="input-group ui-widget ui-front">
							<div class="input-group-prepend">
								<div class="input-group-text">영화</div>
							</div>
							<input type="text"
								class="form-control ui-autocomplete-input ui-autocomplete-loading"
								id="movieSearch" name="title" placeholder="영화를 검색해주세요" autocomplete="off">
							<input type="hidden" id="movieId" name="mvno" value="0">
						</div>
					</div>
					<!-- 공개여부 스위치 -->
					<label class="switch"> 
					   <input type="checkbox" name="open" class="open" checked>
					       <span class="slider round">
					           <i class="fas fa-lock lock" style="display: none;"></i>
					           <i class="fas fa-globe-americas globe"></i>
					       </span>
					</label>
                    <!-- 모달 닫기 -->
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>

				</div>
                <!-- modal-header -->
                
				<div class="modal-body">
				    <!-- 리뷰 작성 -->
					<div class="form-group">
						<textarea name="content" class="form-control" rows="10"
							id="reviewTxtarea" placeholder="리뷰를 작성해주세요"></textarea>
					</div>
					<!-- 친구 태그 -->
					<div class="input-group">
						<div class="input-group-prepend">
							<div class="input-group-text">친구태그하기</div>
						</div>
						<input type="text" class="form-control" name="followGroup"
							placeholder="태그할 팔로우를 작성해주세요">
					</div>
                    
					<div class="form-group">
					    <!-- 사진 첨부 -->
						<div class="file btn btn-primary photo-star-section"
							onclick="document.getElementById('picupload1').click();">
							<i class="far fa-images"></i>사진 <input type="file" size="30"
								style="display: none;" accept="image/*" class="picupload" 
								id="picupload1" name="files" multiple />
						</div>
                        <!-- 별점 -->
						<button class="btn btn-primary onlyMovie photo-star-section" type="button" id="starbtn">
							<i class="far fa-star"></i>별점
						</button>
						<input type="hidden" id="star" name="star" value="0" />
						<div class='starrr onlyMovie photo-star-section'></div>
						<!-- 사진 보이는 list -->
						<ul id="media-list" class="clearfix">
							<li class="myupload "><span><i class="fa fa-plus"
									aria-hidden="true"></i></span></li>
						</ul>
					</div>
				</div>
				<!-- modal-body -->
				
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">CANCEL</button>
					<button type="submit" class="btn btn-primary" id="modalSubmit">SUBMIT</button>
				</div>

			</div>
		</form>
	</div>
</div>