<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#imgArea {
	text-align: center;
	width: 60px;
	height: 60px;
	object-fit: contain;
}
</style>
<!-- 교수 클래스룸  -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">클래스룸</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)"> <svg
					width="17" height="17" viewBox="0 0 17 17" fill="none"
					xmlns="http://www.w3.org/2000/svg">
            <path
						d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z"
						stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round" />
            <path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C"
						stroke-linecap="round" stroke-linejoin="round" />
        </svg> ${subName }
		</a></li>
		<li class="breadcrumb-item active"><a href="javascript:void(0)">출석</a></li>
	</ol>
</div>
<div class="container-fluid" style="padding-top: 1.0rem">
	<div class="row">
		<div class="card">
			<div class="card-header">
				<h4>
					<span style="font-size: 18px; color: #f96d00;">|</span><strong>
						출석</strong>
				</h4>
			</div>
			<div class="card-body">
				<div class="row">
					<!-- ////////////////////출석///////////////////////////// -->
					<div class="col-xl-12">
						<div class="card">
							<div class="card-body p-0">
								<div
									class="table-responsive active-projects style-1 attendance-tbl">
									<div class="tbl-caption">
										<h4 class="heading mb-0">${subName}</h4>
									</div>
									<div id="attendance-tbl_wrapper"
										class="dataTables_wrapper no-footer">
										<table id="attendance-tbl" class="table dataTable no-footer"
											role="grid" aria-describedby="attendance-tbl_info">
											<thead>
												<tr role="row">
													<th class="sorting_asc" tabindex="0"
														aria-controls="attendance-tbl" rowspan="1" colspan="1"
														aria-sort="ascending"
														aria-label="Employee Name: activate to sort column descending"
														style="width: 151.281px;">학생</th>
													<th><span>1</span>
														<p>주차</p></th>
													<th><span>2</span>
														<p>주차</p></th>
													<th><span>3</span>
														<p>주차</p></th>
													<th><span>4</span>
														<p>주차</p></th>
													<th><span>5</span>
														<p>주차</p></th>
													<th><span>6</span>
														<p>주차</p></th>
													<th><span>7</span>
														<p>주차</p></th>
													<th><span>8</span>
														<p>주차</p></th>
													<th><span>9</span>
														<p>주차</p></th>
													<th><span>10</span>
														<p>주차</p></th>
													<th><span>11</span>
														<p>주차</p></th>
													<th><span>12</span>
														<p>주차</p></th>
													<th><span>13</span>
														<p>주차</p></th>
													<th><span>14</span>
														<p>주차</p></th>
													<th><span>15</span>
														<p>주차</p></th>
													<th><span>16</span>
														<p>주차</p></th>
													<th><span></span>
														<p></p></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${atd}" var="data" varStatus="stat">
													<c:set value="${iconInfoList }" var="iconInfo" />
													<c:set value="${classInfoList }" var="classInfo" />
													<tr role="row" class="odd atdTr">
														<td class="sorting_1">
															<div class="products">
																<c:choose>
																	<c:when test="${empty data.profileNo}">
																		<img id="imgArea"
																			src="${pageContext.request.contextPath}/resources/images/profile.png">
																	</c:when>
																	<c:otherwise>
																		<img id="imgArea"
																			src="${pageContext.request.contextPath}/resources/images/profile${data.profilePath}${data.profileName }" />
																	</c:otherwise>
																</c:choose>
																<div>
																	<h6 id="stuId">${data.stuId }</h6>
																	<h6>${data.stuNameKo }</h6>
																	<h6>${data.acaMajor }</h6>
																</div>
															</div>
														</td>
														<!-- 		해당 주차에만 이렇게 하고싶은데 우째할수있을까?	
					<td style="border:1px solid #F0F;"><span></span></td> -->
														<td><span data-value="${data.week1 }" id="week1"
															class="${classInfo[stat.index].week1}"><i
																class="${iconInfo[stat.index].week1 }"></i></span></td>
														<td><span data-value="${data.week2 }" id="week2"
															class="${classInfo[stat.index].week2}"><i
																class="${iconInfo[stat.index].week2 }"></i></span></td>
														<td><span data-value="${data.week3 }" id="week3"
															class="${classInfo[stat.index].week3}"><i
																class="${iconInfo[stat.index].week3 }"></i></span></td>
														<td><span data-value="${data.week4 }" id="week4"
															class="${classInfo[stat.index].week4}"><i
																class="${iconInfo[stat.index].week4 }"></i></span></td>
														<td><span data-value="${data.week5 }" id="week5"
															class="${classInfo[stat.index].week5}"><i
																class="${iconInfo[stat.index].week5 }"></i></span></td>
														<td><span data-value="${data.week6 }" id="week6"
															class="${classInfo[stat.index].week6}"><i
																class="${iconInfo[stat.index].week6 }"></i></span></td>
														<td><span data-value="${data.week7 }" id="week7"
															class="${classInfo[stat.index].week7}"><i
																class="${iconInfo[stat.index].week7 }"></i></span></td>
														<td><span data-value="${data.week8 }" id="week8"
															class="${classInfo[stat.index].week8}"><i
																class="${iconInfo[stat.index].week8 }"></i></span></td>
														<td><span data-value="${data.week9 }" id="week9"
															class="${classInfo[stat.index].week9}"><i
																class="${iconInfo[stat.index].week9 }"></i></span></td>
														<td><span data-value="${data.week10 }" id="week10"
															class="${classInfo[stat.index].week10}"><i
																class="${iconInfo[stat.index].week10 }"></i></span></td>
														<td><span data-value="${data.week11}" id="week11"
															class="${classInfo[stat.index].week11}"><i
																class="${iconInfo[stat.index].week11 }"></i></span></td>
														<td><span data-value="${data.week12 }" id="week12"
															class="${classInfo[stat.index].week12}"><i
																class="${iconInfo[stat.index].week12 }"></i></span></td>
														<td><span data-value="${data.week13 }" id="week13"
															class="${classInfo[stat.index].week13}"><i
																class="${iconInfo[stat.index].week13 }"></i></span></td>
														<td><span data-value="${data.week14 }" id="week14"
															class="${classInfo[stat.index].week14}"><i
																class="${iconInfo[stat.index].week14 }"></i></span></td>
														<td><span data-value="${data.week15 }" id="week15"
															class="${classInfo[stat.index].week15}"><i
																class="${iconInfo[stat.index].week15 }"></i></span></td>
														<td><span data-value="${data.week16 }" id="week16"
															class="${classInfo[stat.index].week16}"><i
																class="${iconInfo[stat.index].week16 }"></i></span></td>
														<td class="text-center"><p class="cnt"
																style="display: inline-block;">${data.atdTotal}</p>/16</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 출석 끝-->
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		$(document)
				.on(
						'click',
						'.atdTr td',
						function() {
							console.log("atdTr의 td", $(this).index());
							var $span = $(this).find('span');
							var tbody = this.parentElement;
							if ($span[0].dataset.value == 'Y') {
								console.log("Switching from Y to N");
								$span[0].dataset.value = "N";
								$span.removeClass('text-success').addClass(
										'text-danger').html(
										'<i class="fa-regular fa-xmark"></i>');
							} else if ($span[0].dataset.value == 'W') {
								console.log("Switching from W to Y");
								$span[0].dataset.value = "Y";
								$span
										.removeClass()
										.addClass('text-success')
										.html(
												'<i class="fa-solid fa-check"></i>');
							} else if ($span[0].dataset.value == 'N') {
								console.log("Switching from N to W");
								$span[0].dataset.value = "W";
								$span.removeClass('text-danger').html('');
							}

							var stuId = $(this).parent().find('#stuId').text();
							var cnt = $(this).parent().find(
									'.fa-solid.fa-check').length;
							// 데이터 시작
							var obj = {
								"atdTotal" : cnt,
								"stuId" : stuId,
								"lecCode" : '${lecCode}'
							}

							// 1주부터 16주까지 데이터 추가 
							//배열식접근법! obj.week1 이렇게 접근하는것과 같다. 
							for (let i = 1; i <= 16; i++) {
								obj["week" + i] = tbody.querySelector('#week'
										+ i).dataset.value;
							}
							console.log("누느로화긴:", obj);
							// 데이터 엔드

							$.ajax({
								type : 'POST',
								url : '/atd/update',
								dataType : "text",
								data : obj,
								success : function(res) {
									console.log("res>>", res);
								}
							})

							console.log("cnt", cnt)
							$(this).parent().find('.cnt').text(cnt);

							if ($(this).index() == 16) {
								var atdScore = $(this).parent().find('.cnt')
										.text() * 6.25;
								console.log("출석점수?", atdScore)
								var atdData = {
									"stuId" : stuId,
									"lecCode" : '${lecCode}',
									"atdScore" : atdScore
								}
								$.ajax({
									type : 'post',
									url : '/atd/scoreUpdate',
									dataType : "text",
									data : atdData,
									success : function(res) {
										console.log(">>>>", res);
									}

								})
							}
						});
	})
</script>