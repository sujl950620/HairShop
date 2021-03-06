<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 예약 목록</title>
<c:import url="/header"></c:import>
<script type="text/javascript">
$(document).ready(function() {
	lastday();
	getresList();
	/* 전체클릭 */
	$("#chk_all").click(function(){
    	if($("#chk_all").prop("checked")){
    		$("input[name=res_check]").prop("checked",true);
    		//클릭이 안되있으면
    	}else{
    		$("input[name=res_check]").prop("checked",false);
    	}
    });
	// 검색 버튼 클릭 Event
	$("#res_Search_btn").on("click", function() {
		if(checkEmpty("#startDate")){
			makeAlert(1, "검색 안내", "검색 하실 날짜를 입력해 주세요.", function() {
			});
		} else if(checkEmpty("#endDate")){
			makeAlert(1, "검색 안내", "검색 하실 날짜를 입력해 주세요.", function() {
			});
		} else if ($("#endDate").val() < $("#startDate").val()) {
            	alert("조회 기간은 과거로 설정하세요.");
		} else {
			$("#page").val("1");
			getresList();
		}
	});
	
	/* 체크개수 카운팅  */
	$(".table_list").on("click", ".list_chbox", function() {
		
		$("#res_all").html($(".table_list tbody .list_chbox").length);
		$("#res_cnt").html($(".table_list tbody .list_chbox:checked").length);
	});

	
	/* 체크박스 영역 제외하고 나머지tr부분 이벤트 적용 */
	$(".table_list").on("click",".res_update" ,function(e) {
		var params = "&res_no=" + $(this).attr("name");
		
		$.ajax({
			type : "post", //데이터 전송방식
			url : "getresdataAjax", //주소
			dataType : "json", //데이터 전송 규격
			data : params, //보낼 데이터
			// {키: 값, 키:값, ...} - > json
			
			success : function(result){
				
				var html = "";
				html += `<form action="#" id="reserForm" method="post">`;
				html += "<table class=\"pop_table\" >                                                                                        ";
				html += "	<colgroup>                                                                                                       ";
				html += "		<col width=\"20%\">                                                                                          ";
				html += "		<col width=\"80%\">                                                                                          ";
				html += "	</colgroup>                                                                                                      ";
				html += "	<tbody>                                                                                                          ";
				html += "		<tr>                                                                                                         ";
				html += "			<td class=\"field_name first_field_name\">일시</td>                                                      ";
				html += "			<td class=\"field_contents\">                                                                            ";
				html += "				<input name=\"res_no\" id=\"res_no\" type=\"hidden\" value=\"${data.RV_NO}\">  ";
				html += "				<input class=\"input_size size45\" name=\"startDate\" id=\"resstartDate\" type=\"date\" value=\"${result.data.RDATE}\">  ";
				html += `				<input class="input_size size45" name="restime" id="restime" value="${result.data.RTIME}" type="time">`;
				html += "			</td>                                                                                                    ";
				html += "		</tr>                                                                                                        ";
				html += "		<tr>                                                                                                         ";
				html += "			<td class=\"field_name first_field_name\">고객명</td>                                                    ";
				html += "			<td class=\"field_contents\">                                                                            ";
				html += `				<input type="hidden" name="txt_client_no" id="txt_client_no" value="${data.CT_NO}">                                                    `;
				html += "				<input class=\"input_size size70\" id=\"txt_client_name\" name=\"txt_client_name\" type=\"text\" value=\"${data.CT_NM}\" >                                                    ";
				html += "				<input type=\"button\" class=\"btn_normal btn_size_normal\" value=\"검색\"/>                         ";
				html += "			</td>                                                                                                    ";
				html += "		</tr>                                                                                                        ";
				html += "		<tr>                                                                                                         ";
				html += "			<td class=\"field_name first_field_name\">연락처                                                         ";
		        html += "          <td class=\"field_contents\">                                                                             ";
		        html += "              <input type=\"text\" class=\"input_normal txt_client_ph\" id=\"txt_client_ph\" name=\"txt_client_ph\" value=\"${data.RV_PH}\" maxlength=\"14\" />                                   ";
		        html += "          </td>                                                                                                     ";
	            html += "      </tr>                                                                                                         ";
				html += "		<tr>                                                                                                         ";
				html += "			<td class=\"field_name first_field_name\">담당자</td>                                                    ";
				html += "			<td class=\"field_contents\">                                                                            ";
				html += "				<input class=\"input_size size70\" id=\"txt_emp_name\" name=\"txt_emp_name\" type=\"text\" value=\"${data.EMP_NM}\">                                                    ";
				html += `				<input type="hidden" name="txt_emp_no" id="txt_emp_no" value="${data.EMP_NO}">                                                    `;
				html += "				<input type=\"button\" class=\"btn_normal btn_size_normal\" value=\"검색\"/>                         ";
				html += "			</td>                                                                                                    ";
				html += "		</tr>                                                                                                        ";
				html += "		<tr>                                                                                                         ";
				html += "			<td class=\"field_name first_field_name\">색상</td>                                                      ";
				html += "			<td class=\"field_contents\">                                                                            ";
				html += "				 <select class=\"input_normal inputModal\" name=\"edit-color\" value=\"${data.RV_COLOR}\" id=\"edit-color\">                         ";
		        html += "                  <option value=\"#D25565\" style=\"color:#D25565;\">빨간색</option>                                ";
		        html += "                  <option value=\"#9775fa\" style=\"color:#9775fa;\">보라색</option>                                ";
		        html += "                  <option value=\"#ffa94d\" style=\"color:#ffa94d;\">주황색</option>                                ";
		        html += "                  <option value=\"#74c0fc\" style=\"color:#74c0fc;\">파란색</option>                                ";
		        html += "                  <option value=\"#f06595\" style=\"color:#f06595;\">핑크색</option>                                ";
		        html += "                  <option value=\"#63e6be\" style=\"color:#63e6be;\">연두색</option>                                ";
		        html += "                  <option value=\"#a9e34b\" style=\"color:#a9e34b;\">초록색</option>                                ";
		        html += "                  <option value=\"#4d638c\" style=\"color:#4d638c;\">남색</option>                                  ";
		        html += "                  <option value=\"#495057\" style=\"color:#495057;\">검정색</option>                                ";
		        html += "              </select>                                                                                             ";
				html += "			</td>                                                                                                    ";
				html += "		</tr>                                                                                                        ";
				html += "		<tr>                                                                                                         ";
				html += "			<td class=\"field_name first_field_name\">예약내용</td>                                                  ";
				html += "			<td class=\"field_contents\">                                                                            ";
				html += "				<input class=\"input_normal\" name=\"txt_RV_CON\" id=\"txt_RV_CON\" type=\"text\" value=\"${data.RV_CON}\">                                                         ";
				html += "			</td>                                                                                                    ";
				html += "		</tr>                                                                                                        ";
				html += "	</tbody>                                                                                                         ";
				html += "</table>";
				html += `</form>`;
			 	makeTwoBtnPopup(1, "예약 등록", html, true, 500, 450, null, "등록", function() {
			 		
			 		if(checkEmpty("#startDate")) {
			 			makeAlert(2, "등록 안내", "날짜를 입력해 주세요.", function() {
							$("#startDate").focus();
						});
					} else if(checkEmpty("#restime")) {
						makeAlert(2, "등록 안내", "시간를 입력해 주세요.", function() {
							$("#restime").focus();
						});
					} else if($.trim($("#txt_client_name").val()) == "") {
						makeAlert(2, "등록 안내", "고객을 입력해 주세요.", function() {
						});
					} else if($.trim($("#txt_client_ph").val()) == "") {
						makeAlert(2, "등록 안내", "연락처를 입력해 주세요.", function() {
							$("#txt_client_ph").focus();
						});
					} else if(checkEmpty("#txt_emp_name")) {
						makeAlert(2, "등록 안내", "담당자를 입력해 주세요.", function() {
						});
					} else if(checkEmpty("#txt_RV_CON")) {
						makeAlert(2, "등록 안내", "예약 내용을 입력해 주세요.", function() {
							$("#txt_RV_CON").focus();
						});
					}
					else { 
						var params = $("#reserForm").serialize();
					
						$.ajax({
							type : "post", //데이터 전송방식
							url : "resUpdateAjax", //주소
							dataType : "json", //데이터 전송 규격
							data : params, //보낼 데이터
							// {키: 값, 키:값, ...} - > json
							
							success : function(result){
								if(result.res == "SUCCESS"){
									closePopup(1);
									makeAlert(2, "수정 오류", "예약 수정되었습니다.", null);
									getresList();
								} else{
									makeAlert(2, "수정 오류", "예약 수정에 실패하였습니다.", null);
								}
							} , 
							error : function(request,status,error) {
								console.log("status : "+request.status);
								console.log("text : "+request.responseText);
								console.log("error : "+error);
							}
							
						});
					}
				},"취소", function() {
					closePopup(1);
				}); 
			 	//전화번호 텍스트 포맷팅
				$(".txt_client_ph").on("keyup", function() {
					inputNumberFormat(this);
				});
				$("#res_no").val(result.data.RV_NO);
				$("#resstartDate").val(result.data.RDATE);
				$("#restime").val(result.data.RTIME);
				$("#txt_client_no").val(result.data.CT_NO);
				$("#txt_client_name").val(result.data.CT_NM);
				$("#txt_client_ph").val(result.data.RV_PH);
				$("#txt_emp_no").val(result.data.EMP_NO);
				$("#txt_emp_name").val(result.data.EMP_NM);
				$("#txt_RV_CON").val(result.data.RV_CON);
				$("#edit-color").val(result.data.RV_COLOR);
				//설렉트 색깔 바꿔주기
			 	$("#edit-color").change(function() {
			 		$("#edit-color").css("color",$(this).val());
		 		});
			} , 
			error : function(request,status,error) {
				console.log("status : "+request.status);
				console.log("text : "+request.responseText);
				console.log("error : "+error);
			}
			
		});
	});
	
	// 검색 엔터키 입력 Event
	$("#searchTxt").on("keypress", function(event) {
		if(event.keyCode == 13) {
			$("#res_Search_btn").click();
			return false;
		}
	});
	// Paging 버튼 클릭 이벤트
	$(".list_paging_area").on("click", "div", function() {
		if(!isNaN($(this).attr("name") * 1)) {
			$("#page").val($(this).attr("name"));
			getresList();
		}
	});	
	/* 예약삭제 */
	$("#reservation_del").on("click", function() {
		
		if($(".table_list tbody .list_chbox:checked").length > 0){
			makeTwoBtnPopup(1, "예약 삭제 경고", "정말 삭제하시겠습니까?", false, 400, 200, null, "확인", function() {
				var params = $("#dataForm").serialize();

				$.ajax({
					type: "post",
					url: "resdelAjax",
					dataType: "json",
					data: params,
					success: function(result) {
						getresList();
					},
					error : function(request, status, error) {
						console.log("status : " + request.status);
						console.log("text : " + request.responseTest);
						console.log("error : " + error);
					}
				});
				
				makeAlert(1, "삭제 성공", "삭제 성공", null);	
				closePopup(1);
			}, "취소", function() {
				closePopup(1);
			});
					
		} else{
			makeAlert(1, "삭제 오류", "1개이상 체크를 해주세요", null);
		}
	});
	
	/* 예약등록 */
	$("#reservation_add").on("click", function(e) {
		  var html = "";
		  	html += `<form action="#" id="reserForm" method="post">`;
			html += "<table class=\"pop_table\" >                                                                                        ";
			html += "	<colgroup>                                                                                                       ";
			html += "		<col width=\"20%\">                                                                                          ";
			html += "		<col width=\"80%\">                                                                                          ";
			html += "	</colgroup>                                                                                                      ";
			html += "	<tbody>                                                                                                          ";
			html += "		<tr>                                                                                                         ";
			html += "			<td class=\"field_name first_field_name\">일시</td>                                                      ";
			html += "			<td class=\"field_contents\">                                                                            ";
			html += "				<input class=\"input_size size45\" name=\"startDate\" id=\"resstartDate\" type=\"date\" value=\"\">  ";
			html += `				<input class="input_size size45" name="restime" id="restime" type="time">`;
			html += "			</td>                                                                                                    ";
			html += "		</tr>                                                                                                        ";
			html += "		<tr>                                                                                                         ";
			html += "			<td class=\"field_name first_field_name\">고객명</td>                                                    ";
			html += "			<td class=\"field_contents\">                                                                            ";
			html += `				<input type="hidden" name="txt_client_no">                                                    `;
			html += "				<input class=\"input_size size70\" id=\"txt_client_name\" name=\"txt_client_name\" type=\"text\">                                                    ";
			html += "				<input type=\"button\" id = \"cus_Btn\"class=\"btn_normal btn_size_normal\" value=\"검색\"/>                         ";
			html += "			</td>                                                                                                    ";
			html += "		</tr>                                                                                                        ";
			html += "		<tr>                                                                                                         ";
			html += "			<td class=\"field_name first_field_name\">연락처                                                         ";
	        html += "          <td class=\"field_contents\">                                                                             ";
	        html += "              <input type=\"text\" class=\"input_normal txt_client_ph\" id=\"txt_client_ph\" name=\"txt_client_ph\" maxlength=\"14\" />                                   ";
	        html += "          </td>                                                                                                     ";
            html += "      </tr>                                                                                                         ";
			html += "		<tr>                                                                                                         ";
			html += "			<td class=\"field_name first_field_name\">담당자</td>                                                    ";
			html += "			<td class=\"field_contents\">                                                                            ";
			html += "				<input class=\"input_size size70\" id=\"txt_emp_name\" name=\"txt_emp_name\" type=\"text\">                                                    ";
			html += `				<input type="hidden" id="emp_no" value="">                                                    `;
			html += "				<input type=\"button\" class=\"btn_normal btn_size_normal\" value=\"검색\"/>                         ";
			html += "			</td>                                                                                                    ";
			html += "		</tr>                                                                                                        ";
			html += "		<tr>                                                                                                         ";
			html += "			<td class=\"field_name first_field_name\">색상</td>                                                      ";
			html += "			<td class=\"field_contents\">                                                                            ";
			html += "				 <select class=\"input_normal inputModal\" style=\"color:#D25565;\" name=\"edit-color\" id=\"edit-color\">                         ";
            html += "                  <option value=\"#D25565\" style=\"color:#D25565;\">빨간색</option>                                ";
            html += "                  <option value=\"#9775fa\" style=\"color:#9775fa;\">보라색</option>                                ";
            html += "                  <option value=\"#ffa94d\" style=\"color:#ffa94d;\">주황색</option>                                ";
            html += "                  <option value=\"#74c0fc\" style=\"color:#74c0fc;\">파란색</option>                                ";
            html += "                  <option value=\"#f06595\" style=\"color:#f06595;\">핑크색</option>                                ";
            html += "                  <option value=\"#63e6be\" style=\"color:#63e6be;\">연두색</option>                                ";
            html += "                  <option value=\"#a9e34b\" style=\"color:#a9e34b;\">초록색</option>                                ";
            html += "                  <option value=\"#4d638c\" style=\"color:#4d638c;\">남색</option>                                  ";
            html += "                  <option value=\"#495057\" style=\"color:#495057;\">검정색</option>                                ";
            html += "              </select>                                                                                             ";
			html += "			</td>                                                                                                    ";
			html += "		</tr>                                                                                                        ";
			html += "		<tr>                                                                                                         ";
			html += "			<td class=\"field_name first_field_name\">예약내용</td>                                                  ";
			html += "			<td class=\"field_contents\">                                                                            ";
			html += "				<input class=\"input_normal\" name=\"txt_RV_CON\" id=\"txt_RV_CON\" type=\"text\">                                                         ";
			html += "			</td>                                                                                                    ";
			html += "		</tr>                                                                                                        ";
			html += "	</tbody>                                                                                                         ";
			html += "</table>";
			html += `</form>`;
			
										
		 	makeTwoBtnPopup(1, "예약 등록", html, true, 500, 450, null, "등록", function() {
		 		if(checkEmpty("#startDate")) {
		 			makeAlert(2, "등록 안내", "날짜를 입력해 주세요.", function() {
						$("#startDate").focus();
					});
				} else if(checkEmpty("#restime")) {
					makeAlert(2, "등록 안내", "시간를 입력해 주세요.", function() {
						$("#restime").focus();
					});
				} else if($.trim($("#txt_client_name").val()) == "") {
					makeAlert(2, "등록 안내", "고객을 입력해 주세요.", function() {
					});
				} else if($.trim($("#txt_client_ph").val()) == "") {
					makeAlert(2, "등록 안내", "연락처를 입력해 주세요.", function() {
						$("#txt_client_ph").focus();
					});
				} else if(checkEmpty("#txt_emp_name")) {
					makeAlert(2, "등록 안내", "담당자를 입력해 주세요.", function() {
					});
				} else if(checkEmpty("#txt_RV_CON")) {
					makeAlert(2, "등록 안내", "예약 내용을 입력해 주세요.", function() {
						$("#txt_RV_CON").focus();
					});
				}
				else { 
					var params = $("#reserForm").serialize();
				
					$.ajax({
						type : "post", //데이터 전송방식
						url : "reserAddAjax", //주소
						dataType : "json", //데이터 전송 규격
						data : params, //보낼 데이터
						// {키: 값, 키:값, ...} - > json
						
						success : function(result){
							if(result.res == "SUCCESS"){
								closePopup(1);
								makeAlert(2, "등록 오류", "예약 등록되었습니다.", null);
								getresList();
							} else{
								makeAlert(2, "등록 오류", "예약 등록에 실패하였습니다.", null);
							}
						} , 
						error : function(request,status,error) {
							console.log("status : "+request.status);
							console.log("text : "+request.responseText);
							console.log("error : "+error);
						}
						
					});
				}
			},"취소", function() {
				closePopup(1);
			}); 
		 	resaddpopset();
		 	//전화번호 텍스트 포맷팅
			$(".txt_client_ph").on("keyup", function() {
				inputNumberFormat(this);
			});
			$("#cus_Btn").on("click", function(){
				html = "";
				html += "<table class = \"pop_table pop_list\">";
				html += "<tbody>";
				html += "<tr>"
				html += "<td colspan = \"4\" class = \"field_contents size100\">";
				html += "<input type=\"button\" class=\"btn_normal btn_size_normal\" value=\"등록\"/>";
				html += "<input type=\"button\" class=\"btn_normal btn_size_normal\" value=\"삭제\"/>";
				html += "</td>";
				html += "</tr>";
				html += "<tr>";
				html += "<td class = \"field_name first_field_name size15\">검색조건</td>";
				html += "<td class = \"size30\">";
				html += "<select class=\"input_size pxsize200\">";
				html += "<option selected=\"selected\">전체</option>";
				html += "<option>고객명</option>";
				html += "<option>연락처</option>";
				html += "</select>";
				html += "</td>";
				html += "<td class = \"field_name first_field_name size15\">검색어</td>";
				html += "<td>";
				html += "<input class=\"input_size pxsize200\" type=\"text\">";
				html += "<input type=\"button\" class=\"btn_normal btn_size_normal\" value=\"검색\"/>&nbsp; &nbsp; &nbsp; &nbsp;";
				html += "</td>";
				html += "</tr>";
				html += "</tbody>";
				html += "</table>";
				html += "<div class = \"pop_customer_list widthscroll\">";
				html += "<table class = \"table_list tborder pxsize1650\" id = \"pop_customer_list\">";
				html += "<colgroup>";
				html += "<col width=\"3%\">";
				html += "<col width=\"4%\">";
				html += "<col width=\"4%\">";
				html += "<col width=\"3%\">";
				html += "<col width=\"6%\">";
				html += "<col width=\"6%\">";
				html += "<col width=\"6%\">";
				html += "<col width=\"8%\">";
				html += "<col width=\"6%\">";
				html += "<col width=\"4%\">";
				html += "<col width=\"8%\">";
				html += "<col width=\"8%\">";
				html += "<col width=\"10%\">";
				html += "<col width=\"10%\">";
				html += "<col width=\"14%\">";
				html += "</colgroup>";
				html += "<thead>";
				html += "<tr class = \"table_list_header padding0a10\">";
				html += "<td>";
				html += "<div class = \"squaredOne_h\">";
				html += "<input type=\"checkbox\" value=\"None\" style=\"display : none;\" id=\"pop_CT_checkall\"  />";
				html += "<label for=\"pop_CT_checkall\"  ></label>"
				html += "</div>";
				html += "</td>";
				html += "<td>선택</td>";
				html += "<td>수정</td>";
				html += "<td>NO</td>";
				html += "<td>고객명</td>";
				html += "<td>담당자</td>";
				html += "<td>포인트</td>";
				html += "<td>핸드폰</td>";
				html += "<td>전화</td>";
				html += "<td>성별</td>";
				html += "<td>생년월일</td>";
				html += "<td>회원등록일</td>";
				html += "<td>이메일</td>";
				html += "<td>주소</td>";
				html += "<td>메모</td>";
				html += "</tr>";
				html += "</thead>";
				html += "</table>";
				html += "<table class = \"table_list tborder pxsize1650\" id = \"pop_customer_list\" style=\"table-layout: fixed\">";
				html += "<colgroup>";
				html += "<col width = \"3%\">";
				html += "<col width = \"4%\">";
				html += "<col width = \"4%\">";
				html += "<col width = \"3%\">";
				html += "<col width = \"6%\">";
				html += "<col width = \"6%\">";
				html += "<col width = \"6%\">";
				html += "<col width = \"8%\">";
				html += "<col width = \"6%\">";
				html += "<col width = \"4%\">";
				html += "<col width = \"8%\">";
				html += "<col width = \"8%\">";
				html += "<col width = \"10%\">";
				html += "<col width = \"10%\">";
				html += "<col width = \"14%\">";
				html += "</colgroup>";
				html += "<tbody id = \"cbody\">"
				html += "</tbody>"
				makeNoBtnPopup(3, "고객 목록", html, true, 900, 575, function() {
					
					$(".pop_list").parent(".pop_contents").css("padding", "0");
					
					var params = $("#reserForm").serialize();
					
					$.ajax({
						type : "post", //데이터 전송방식
						url : "cListAjax", //주소
						dataType : "json", //데이터 전송 규격
						data : params, //보낼 데이터
						// {키: 값, 키:값, ...} - > json
						
						success : function(result){
							
								customerList(result.list);
							
						} , 
						error : function(request,status,error) {
							console.log("status : "+request.status);
							console.log("text : "+request.responseText);
							console.log("error : "+error);
						}
						
					})
				});
			});
				
			//설렉트 색깔 바꿔주기
		 	$("#edit-color").change(function() {
		 		$("#edit-color").css("color",$(this).val());
	 		});
			$("#restime").val('12:00');
	  });
});
//예약 데이터 리스트 Get
function getresList() {
	var params = $("#actionForm").serialize();

	$.ajax({
		type: "post",
		url: "getreservationlistAjax",
		dataType: "json",
		data: params,
		success: function(result) {
			drawListPaging(result.pb);
			drawresList(result.list);
		},
		error : function(request, status, error) {
			console.log("status : " + request.status);
			console.log("text : " + request.responseTest);
			console.log("error : " + error);
		}
	});
}
// 예약 리스트 Draw
function drawresList(list) {
	var html = "";
	if(list.length > 0) {
		for(var i in list) {
			html += `<tr class="list_contents" name="`+list[i].RV_NO+`">                                                                              `;
			html += `	<td style="cursor : default;" class="chk_td">                                                                             `;
			html += `		<div class="squaredOne">                                                                                              `;
			html += `			<input type="checkbox" class="list_chbox" value="`+list[i].RV_NO+`" style="display : none;" id="chk_`+list[i].RV_NO+`" name="res_check" />   `;
			html += `			<label class="chbox_lbl" for="chk_`+list[i].RV_NO+`"></label>                                                                         `;
			html += `		</div>                                                                                                                `;
			html += `	</td>                                                                                                                     `;
			html += `	<td style="cursor : default;"><input name="`+list[i].RV_NO+`"type="button" class="res_update" value="수정"/></td>                                `;
			html += `	<td>`+list[i].RV_NO+`</td>                                                                                                  `;
			html += `	<td>`+list[i].RDATE+`</td>                                                                                                  `;
			html += `	<td>`+list[i].RTIME+`</td>                                                                                                  `;
			html += `	<td>`+list[i].CT_NM+`</td>                                                                                                  `;
			html += `	<td>`+list[i].RV_PH+`</td>                                                                                                  `;
			html += `	<td>`+list[i].EMP_NM+`</td>                                                                                                 `;
			html += `	<td>`+list[i].RV_CON +`</td>                                                                                               `;
			html += `</tr>                                                                                                                        `;
		}                                                                                                                                         
		
		var res_allcnt = list.length;
		$("#res_cnt").html(0);
		$("#res_all").html(res_allcnt);
		$("input[type=checkbox]").prop("checked",false);
	}
	else {
		html += "<tr class=\"list_contents\" style=\"height: 350px;\">";
		html += "<td colspan=\"9\">조회된 데이터가 없습니다.</td>";
		html += "</tr>";
		$(".list_paging_area").html("");
	}
	$(".table_list>tbody").html(html);
}
//Paging draw
function drawListPaging(pb) {
	var html = "";
	html += "<div class=\"btn_paging\" name=\"1\">&lt;&lt;</div>";

	html += "<div class=\"btn_paging\"name=\"";
	html += ($("#page").val() == "1")? "1" : ($("#page").val() * 1 - 1);
	html += "\">&lt;</div>";

	for(var i = pb.startPcount; i <= pb.endPcount; i++) {		
		html += "<div class=\"btn_paging";
		html += ($("#page").val() == i)? "_on\">" : "\" name=\"" + i + "\">";
		html += i + "</div>";
	}
	
	html += "<div class=\"btn_paging\"name=\"";
	html += ($("#page").val() == (pb.maxPcount))? pb.maxPcount : ($("#page").val() * 1 + 1);
	html += "\">&gt;</div>";

	html += "<div class=\"btn_paging\" name=\"" + pb.maxPcount + "\">&gt;&gt;</div>";
	
	$(".list_paging_area").html(html);
	
}
//마지막일 계산
function lastday() {
	var date    = new Date();
	var month = date.getMonth() + 1;
	var yyyy = date.getFullYear();
	var last   = new Date( yyyy, month ); 
	     last   = new Date( last - 1 ); 
	var lastD = last.getDate();
	var mm = date.getMonth()+1 > 9 ? date.getMonth()+1 : '0' + (date.getMonth()+1);
	var mm1 = date.getMonth()+1 > 9 ? date.getMonth() : '0' + (date.getMonth()+1);
	var dd = date.getDate() > 9 ? date.getDate() : '0' + date.getDate();
	$("#endDate").val(yyyy+"-"+mm+"-"+lastD);
}
function resaddpopset() {
	var date = new Date();
	var yyyy = date.getFullYear();
	var mm = date.getMonth()+1 > 9 ? date.getMonth()+1 : '0' + (date.getMonth()+1);
	var mm1 = date.getMonth()+1 > 9 ? date.getMonth() : '0' + (date.getMonth()+1);
	var dd = date.getDate() > 9 ? date.getDate() : '0' + date.getDate();
	$("#resstartDate").val(yyyy+"-"+mm+"-"+dd);
	
}
//예약 리스트 Draw
function customerList(list) {
	var html = "";
	if(list.length > 0) {
		for(var i in list) {
			html += `<tr class="list_contents padding0a10" name="`+list[i].CT_NO+`">                                                                              `;
			html += `	<td style="cursor : default;" class="chk_td">                                                                             `;
			html += `		<div class="squaredOne">                                                                                              `;
			html += `			<input type="checkbox" class="list_chbox" value="`+list[i].CT_NO+`" style="display : none;" id="chk_`+list[i].CT_NO+`" name="res_check" />   `;
			html += `			<label class="chbox_lbl" for="chk_`+list[i].CT_NO+`"></label>                                                                         `;
			html += `		</div>                                                                                                                `;
			html += `	</td>                                                                                                                     `;
			html += `	<td style="cursor : default;"><input name="`+list[i].CT_NO+`"type="button" class="res_update" value="선택"/></td>                              `;
			html += `	<td style="cursor : default;"><input name="`+list[i].CT_NO+`"type="button" class="res_update" value="수정"/></td>                              `;
			html += `	<td>`+list[i].CT_NO+`</td>                                                                                                  `;
			html += `	<td>`+list[i].CT_NM+`</td>                                                                                                  `;
			html += `	<td>`+list[i].EMP_NM+`</td>                                                                                                  `;
			html += `	<td>`+list[i].POINT+`</td>                                                                                                  `;
			html += `	<td>`+list[i].CT_NUM+`</td>                                                                                                  `;
			html += `	<td>`+list[i].CT_PH+`</td>                                                                                                 `;
			html += `	<td>`+list[i].CT_SEX +`</td>                                                                                               `;
			html += `	<td>`+list[i].BIR +`</td>                                                                                               `;
			html += `	<td>`+list[i].REG +`</td>                                                                                               `;
			html += `	<td>`+list[i].CT_EMAIL +`</td>                                                                                               `;
			html += `	<td>`+list[i].CT_ADD +`</td>                                                                                               `;
			html += `	<td>`+list[i].CT_MEMO +`</td>                                                                                               `;
			html += `</tr>                                                                                                                        `;
		}                                                                                                                                         
		
		var res_allcnt = list.length;
		$("#res_cnt").html(0);
		$("#res_all").html(res_allcnt);
		$("input[type=checkbox]").prop("checked",false);
	}
	else {
		html += "<tr class=\"list_contents\" style=\"height: 350px;\">";
		html += "<td colspan=\"9\">조회된 데이터가 없습니다.</td>";
		html += "</tr>";
		$(".list_paging_area").html("");
	}
	$("#cbody").html(html);
}
</script>
</head>
<body>
	<c:import url="/topLeft">
		<c:param name="menuNo">28</c:param>
	</c:import>
	<div class="title_area">월간 예약 목록</div>
	<div class="content_area">
		<div class="contents_wrap">
			<div class="list_wrap">
					<div class="table_top_area">
						<div class="top_title_area size40" style="vertical-align: bottom;">
							<input type="button" class="btn_date pxsize50" id="today" value="오늘"/>
							<input type="button" class="btn_date pxsize50" id="3days" value="3일"/>
							<input type="button" class="btn_date pxsize50" id="7days" value="7일"/>
							<input type="button" class="btn_date pxsize50" id="15days" value="15일"/>
							<input type="button" class="btn_date pxsize50" id="month" value="한달"/>
							<input type="button" class="btn_date pxsize50" id="mtotal" value="전체"/>
						</div>
						<div class="top_btn_area size60">
						</div>
					</div>
					<form action="#" id="actionForm" method="post">
					<input type="hidden" id="res_no" name="res_no" value="" />
						<input type="hidden" name="page" id="page" value="${page}">
						<div class="table_top_area">
							<div class="top_title_area size40" style="vertical-align: top;">
								<select class="input_size pxsize100" name="searchGbn" id="searchGbn">
									<option value="0" selected="selected">전체</option>
									<option value="1">예약자</option>
									<option value="2">연락처</option>
									<option value="3">담당자</option>
									<option value="4">예약내용</option>
								</select>
								<input class="input_size pxsize150" name="startDate" id="startDate" type="date" value="">
								~
								<input class="input_size pxsize150" name="endDate" id="endDate" type="date" value="">
							</div>
							<div class="top_title_area size35">
								<input class="input_size pxsize200" type="text" name="searchTxt" id="searchTxt" placeholder="예약자/연락처/담당자/예약내용">
								<input type="button" class="btn_normal btn_size_normal" id="res_Search_btn" value="검색"/>
							</div>
							<div class="top_btn_area size25">
								<input type="button" class="btn_normal btn_size_normal" id="reservation_add" value="등록"/>
								<input type="button" class="btn_normal btn_size_normal" id="reservation_del" value="삭제"/>
							</div>
						</div>
						<div class="table_top_area">
							<div class="top_title_area size25">
								<div>
									<select class="input_size pxsize100" name="pg_cnt" id="pg_cnt">
										<option value="10" selected="selected">10단위</option>
										<option value="20">20단위</option>
										<option value="50">50단위</option>
										<option value="100">100단위</option>
									</select>
									 <span id="res_all">#</span>개 항목중 
									<span id="res_cnt">0</span>개 선택
								</div>
							</div>
							<div class="top_btn_area size75">
							</div>
						</div>
					</form>
					<form action="#" id="dataForm" method="post">
					<table class="table_list">
						<colgroup>
							<col width="5%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="15%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr class="table_list_header">
								<td>
									<div class="squaredOne_h">
										<input type="checkbox" value="None" class="list_chbox" style="display : none;" id="chk_all"  />
										<label for="chk_all"  ></label> <!-- squaredOne 같이? -->
									</div>
								</td>
								<td>수정</td>
								<td>NO</td>
								<td>예약일</td>
								<td>예약시간</td>
								<td>예약자</td>
								<td>연락처</td>
								<td>담당자</td>
								<td>예약내용</td>
							</tr>
						</thead>
					</table>
					<div class="sscroll">
						<table class="table_list">
							<colgroup>
								<col width="5%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="15%">
								<col width="20%">
							</colgroup>
							<tbody>
							</tbody>
						</table>
					</div>
					</form>
					<div class="list_paging_area">
           			 </div>
           			 <div class="blank_space">
           			 </div>
				</div>
		</div>
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>