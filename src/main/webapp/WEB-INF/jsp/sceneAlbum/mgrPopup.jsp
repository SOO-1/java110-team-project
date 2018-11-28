<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Modal -->

<div class="modal fade" id="mgrModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document" id="rModal">
        <form action="add" method="post">
            <div class="modal-content">

                <!-- Modal-Header -->
                <div class="modal-header form-inline">
                    <h5 class="modal-title"></h5>

                    <div class="title_box">
                    ${sceneAlbum.lbmTitle}
                    <span class="title_edit"> <i class="far fa-edit" style="font-size: 1rem;"></i></span>
                    </div>
                   
                    <!-- 공개여부 -->
                    <div class="row">
                        <c:choose>
                            <c:when test="${sceneAlbum.open == 'true'}">
                                <span> <i class="fas fa-globe-americas globe"></i>
                                </span>
                            </c:when>
                            <c:otherwise>
                                <span> <i class="fas fa-lock lock"></i>
                                </span>
                            </c:otherwise>
                        </c:choose>

                        <!-- 모달 닫기 -->
                        <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                </div>
                <!-- modal-header -->

                <div class="modal-body p-0">
                        <div class="row mbr-justify-content-center">
                             <div class="col-lg-3 boxBorder">
                             <div class="scrollbar-light-blue boxList">
                                <c:forEach items="${sceneAlbumList}" var="album">
                                    <div class="album_title al_wrap text-center">
                                    <div class="al_overflow">${album.lbmTitle}</div></div>
                                </c:forEach>
                                </div>
                                <div class="al_add"><i class="fas fa-plus"></i>보관함 추가</div>
                             </div>
                             
                             <div class="col-lg-9">
                             </div>
                        </div>
                </div>
                <!-- modal-body -->

                <!-- <div class="modal-footer">
                    <button type="button" class="btn btn-secondary"
                        data-dismiss="modal">CANCEL</button>
                    <button type="submit" class="btn btn-primary" id="modalSubmit">SUBMIT</button>
                </div> -->

            </div>
        </form>
    </div>
</div>