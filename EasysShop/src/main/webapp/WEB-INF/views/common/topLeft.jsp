<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function() {
	getLeftMenu();
	
	//Logout Button
	$("#logoutBtn").on("click", function() {
		location.href = "logout";
	});
	
	//Logo Event
	$(".logo_wrap").on("click", function() {
		location.href = "contentsTest";
	});
	
	$("#searchAddrBtn").postcodifyPopUp();	
	
	/* $("#emp_ph").on("keyup keypress", function() {
		var num = $(this).val();
		var ph_num = num.replace(/[^0-9]/g, "").replace(/([0-9]{3})([0-9]{2})([0-9]{5})/,"$1-$2-$3").replace("--", "-");
		$(this).val(ph_num);
	}); */

	
	
	//Left Menu Location Event
	$(".menu_wrap").on("click", ".first_menu, .second_menu", function() {
		if($(this).is("[addr]")) {
			$("#menuNo").val($(this).attr("menuno"));
			
			$("#locationForm").attr("action", $(this).attr("addr"));
			
			$("#locationForm").submit();
		} else if ($(this).attr("menuno") == 15) {
			Gradefun(1);
		} else if ($(this).attr("menuno") == 16) {
				
		} else if ($(this).attr("menuno") == 17) {
			Gradefun(2);
		} else if ($(this).attr("menuno") == 18) {
			console.log(1);
		} else if ($(this).attr("menuno") == 19) {
			console.log(1);
		} else if ($(this).attr("menuno") == 20) {
			Compfun();
		}
			
		// 조건X 검색 버튼 클릭 Event
		$("#pop_Search_Btn").on("click", function a(str) {
			var str = $(this).attr("name");
			console.log(str);
			
// 			function a(str) { 
// 				str();
// 			}
// 			a(str);
// 			console.log(e.attr("name"));
// 			str();
	 		if (str == "getcustgradelist") getlist(1);
	 		if (str == "getempgradelist") getlist(2);
		});
		
		$("input[name=searchTxt]").on("keypress", function() {
			if(event.keyCode == 13) {
				$("#pop_Search_Btn").click();
				return false;
			}
// 			if()
// 			console.log($(this).attr("id"));
		});
		
		/* 체크박스 영역 제외하고 나머지tr부분 이벤트 적용 고객등급*/
		$(".pop_list").on("click",".pop_update" ,function(e) {
			
// 			var params = "&cust_g_no=" + $(this).attr("name");
			var params = "&"+$(this).attr("id")+"=" + $(this).attr("name");
			var ajax = "";
			if ($(this).attr("id") == "cust_g_no") {
				ajax = "getcustgdataAjax";
			} else if($(this).attr("id") == "emp_g_no") {
				ajax = "getempgdataAjax";
			}
			console.log(params);
			$.ajax({
				type : "post", //데이터 전송방식
				url : ajax, //주소
				dataType : "json", //데이터 전송 규격
				data : params, //보낼 데이터
				// {키: 값, 키:값, ...} - > json
				
				success : function(result1){
					console.log(ajax);
					if (ajax == "getcustgdataAjax") {
						make_custgrade_pop(2,"고객 등급 수정",result1);
					} else if (ajax == "getempgdataAjax") {
						make_custgrade_pop(4,"직원 등급 수정",result1);
					}
				} , 
				error : function(request,status,error) {
					console.log("status : "+request.status);
					console.log("text : "+request.responseText);
					console.log("error : "+error);
				}
				
			});
		});
// 		체크 전체
		$("#pop_chk_all").click(function(){
	    	if($("#pop_chk_all").prop("checked")){
	    		$("input[name=pop_check]").prop("checked",true);
	    		//클릭이 안되있으면
	    	}else{
	    		$("input[name=pop_check]").prop("checked",false);
	    	}
	    });
	    
		
		
	});
	
	
});
//리스트 Get
function getlist(no) {
	var params = $("#popactionForm").serialize();
	var ajax = "";
	if (no == 1) {
		ajax = "getcustgradelistAjax";
	} else if (no == 2) {
		ajax = "getempgradelistAjax";
	} else if (no == 3) {
		ajax = "getcomplistAjax";
	}
	$.ajax({
		type: "post",
		url: ajax,
		dataType: "json",
		data: params,
		success: function(result) {
			if (ajax == "getcustgradelistAjax") {
				drawgradeList(1,result.list);
			} else if(ajax == "getempgradelistAjax") {
				drawgradeList(2,result.list);
			} else if(ajax = "getcomplistAjax") {
				drawcompList(result.list);
			}
		},
		error : function(request, status, error) {
			console.log("status : " + request.status);
			console.log("text : " + request.responseTest);
			console.log("error : " + error);
		}
	});
}
//고객,직원 등급 메서드
function Gradefun (ck) {
	var html = "";
	html += `<form id="popactionForm" action="#" method="post">`;
	html += `<table class="pop_table">`;
	html += `	<colgroup>            `;
	html += `		<col width="20%"> `;
	html += `		<col width="80%"> `;
	html += `	</colgroup>           `;
	html += `	<tbody>               `;
	html += `		<tr>              `;
	html += `			<td class="field_name first_field_name">검색어</td> `;
	html += `			<td class="field_contents">                         `;
	if (ck == 1) {
		html += `				<input class="input_size size60" type="text" id="getcustgradelist" name="searchTxt">   `;
		html += `				<input type="button" class="btn_normal btn_size_normal" id="pop_Search_Btn" name="getcustgradelist" value="검색"/>`;
	} else if( ck == 2) {
		html += `				<input class="input_size size60" type="text" id="getempgradelist" name="searchTxt">   `;
		html += `				<input type="button" class="btn_normal btn_size_normal" id="pop_Search_Btn" name="getempgradelist" value="검색"/>`;
	}
	html += `			</td>`;
	html += `		</tr> `;
	html += `	</tbody>  `;
	html += `</table>     `;
	html += `<br>`;
	html += `</form>`;
	html += `<form id="popdataForm" action="#" method="post">`;
	html += `<table class="table_list pop_list">                `;
	html += `	<thead class="thead_scroll">           `;
	html += `		<tr class="table_list_header">     `;
	html += `			<td  width="80px" nowrap>      `;
	html += `				<div class="squaredOne_h"> `;
	html += `					<input type="checkbox" value="None" class="list_chbox" style="display : none;" id="pop_chk_all"  />`;
	html += `					<label for="pop_chk_all"  ></label>`; 
	html += `				</div>`;
	html += `			</td>`;
	html += `			<td  width="95px" nowrap>수정</td>     `;
	html += `			<td  width="75px" nowrap>레벨</td>               `;
	html += `			<td  width="130px" nowrap>등급명</td>             `;
	html += `		</tr>                                              `;
	html += `	</thead>                                               `;
	html += `	<tbody class="tbody_scroll sscroll" style="height : 300px !important">                           `;
	html += `	</tbody>                                               `;
	html += `</table>                                                  `;
	html += `</form>`;
	var str = "";
	if (ck == 1) {
		str = "고객 등급";
	} else if( ck == 2) {
		str = "직원 등급"
	}
	makeThreeBtnPopup(1, str, html, false, 400, 600, function() {
		getlist(ck);
	}
	, "등록", function() {
		make_custgrade_pop(1,"고객 등급 등록");
	},"삭제", function() {
		var params = $("#popdataForm").serialize();
		listdel(2,"고객 등급",400,200,"popactionForm","custgradedelAjax",getlist(1),params);
	},"취소", function() {
		closePopup(1);
	});
}

//거래처 메서드
function Compfun () {
	var html = "";
	html += `<form id="popactionForm" action="#" method="post">`;
	html += `<table class="pop_table">`;
	html += `	<colgroup>            `;
	html += `		<col width="20%"> `;
	html += `		<col width="80%"> `;
	html += `	</colgroup>           `;
	html += `	<tbody>               `;
	html += `		<tr>              `;
	html += `			<td class="field_name first_field_name">검색어</td> `;
	html += `			<td class="field_contents">                         `;
	html += `				<select class="input_size pxsize100" name="searchGbn" id="searchGbn">  `;
	html += `					<option value="0" selected="selected">전체</option>                `;
	html += `					<option value="1">거래처 구분</option>                                  `;
	html += `					<option value="2">거래처명</option>                                  `;
	html += `					<option value="3">담당자</option>                                `;
	html += `				</select>                                                              `;
	html += `				<input class="input_size size60" type="text" id="getcustgradelist" name="searchTxt">   `;
	html += `				<input type="button" class="btn_normal btn_size_normal" id="pop_Search_Btn" name="getcomplist" value="검색"/>`;
	html += `			</td>`;
	html += `		</tr> `;
	html += `	</tbody>  `;
	html += `</table>     `;
	html += `<br>`;
	html += `</form>`;
	html += `<form id="popdataForm" action="#" method="post">`;
	html += `<table class="table_list pop_list widthscroll">                `;
	html += `	<thead class="thead_scroll ">           `;
	html += `		<tr class="table_list_header">     `;
	html += `			<td width="80px" nowrap>      `;
	html += `				<div class="squaredOne_h"> `;
	html += `					<input type="checkbox" value="None" class="list_chbox" style="display : none;" id="pop_chk_all"  />`;
	html += `					<label for="pop_chk_all"  ></label>`; 
	html += `				</div>`;
	html += `			</td>`;
	html += `			<td width="95px" nowrap>수정</td>     `;
	html += `			<td width="120px" nowrap>담당자</td>`;
	html += `			<td width="120px" nowrap>거래처 구분</td>`;
	html += `			<td width="130px" nowrap>거래처명</td>    `;
	html += `			<td width="150px" nowrap>사업자번호</td>    `;
	html += `			<td width="110px" nowrap>대표자명</td>   `;
	html += `			<td width="110px" nowrap>업태</td>      `;
	html += `			<td width="110px" nowrap>종목</td>   `;
	html += `			<td width="300px" nowrap>주소</td>  `;
	html += `			<td width="140px" nowrap>전화1</td>`;
	html += `			<td width="140px" nowrap>전화2</td>   `;
	html += `			<td width="140px" nowrap>핸드폰</td>     `;
	html += `			<td width="140px" nowrap>팩스</td>     `;
	html += `			<td width="140px" nowrap>이메일</td> `;
	html += `			<td width="180px" nowrap>사이트</td>   `;
	html += `			<td width="100px" nowrap>메모</td>   `;
	html += `			<td width="130px" nowrap>등록일</td>   `;
	html += `			<td width="130px" nowrap>거래일</td>   `;
	html += `		</tr>                                              `;
	html += `	</thead>                                               `;
	html += `	<tbody class="tbody_scroll sscroll">                           `;
	html += `	</tbody>                                               `;
	html += `</table>                                                  `;
	html += `</form>`;
	
	makeThreeBtnPopup(1, "거래처 코드 관리", html, false, 900, 700, function() {
		getlist(3);
		$("#popdataForm").slimScroll({
			width : "880px",
			height: "500px",
			axis: 'both'
		});
	}
	, "등록", function() {
		make_comp_pop(1, "등록");
	},"삭제", function() {
		var params = $("#popdataForm").serialize();
		listdel(2,"고객 등급",400,200,"popactionForm","custgradedelAjax",getlist(1),params);
	},"취소", function() {
		closePopup(1);
	});
	
	
}
//거래처 리스트 Draw
function drawcompList(list) {
	var html = "";
	if(list.length > 0) {
		
		for(var i in list) {
			html += `<tr class="list_contents" name="`+list[i].CP_NO+`">                                                                              `;
			html += `	<td width="80px" nowrap style="cursor : default;" class="chk_td">                                                                             `;
			html += `		<div class="squaredOne">                                                                                              `;
			html += `			<input type="checkbox" class="list_chbox" value="`+list[i].CP_NO+`" style="display : none;" id="chk_`+list[i].CP_NO+`" name="pop_check" />   `;
			html += `			<label class="chbox_lbl" for="chk_`+list[i].CP_NO+`"></label>                                                                         `;
			html += `		</div>                                                                                                                `;
			html += `	</td>                                                                                                                     `;
			html += `	<td  width="95px" nowrap style="cursor : default;"><input name="`+list[i].CP_NO+`"type="button" class="pop_update" id="comp_g_no" value="수정"/></td>                                `;
			html += `			<td width="120px" nowrap>`+list[i].EMP_NM+`</td>   `;
			html += `			<td width="120px" nowrap>`+list[i].CP_TYPE+`</td>`;
			html += `			<td width="130px" nowrap>`+list[i].CP_NM+`</td>`;
			html += `			<td width="150px" nowrap>`+list[i].CP_BIZ_NO+`</td>    `;
			html += `			<td width="110px" nowrap>`+list[i].CP_BIZ_NM+`</td>    `;
			html += `			<td width="110px" nowrap>`+list[i].CP_BIZ+`</td>   `;
			html += `			<td width="110px" nowrap>`+list[i].CP_EVENT+`</td>      `;
			html += `			<td width="300px" nowrap>`+list[i].CP_ADD+` `+list[i].CP_ADD_DETAIL+`</td>`
			html += `			<td width="140px" nowrap>`+list[i].CP_PH1+`</td>  `;
			html += `			<td width="140px" nowrap>`+list[i].CP_PH2+`</td>`;
			html += `			<td width="140px" nowrap>`+list[i].CP_PH+`</td>   `;
			html += `			<td width="140px" nowrap>`+list[i].CP_FAX+`</td>     `;
			html += `			<td width="140px" nowrap>`+list[i].CP_EMAIL+`</td>     `;
			html += `			<td width="180px" nowrap>`+list[i].CP_WEBSITE+`</td> `;
			html += `			<td width="100px" nowrap>`+list[i].CP_MEMO+`</td>   `;
			html += `			<td width="130px" nowrap>`+list[i].CP_DATE+`</td>   `;
			html += `			<td width="130px" nowrap>`+list[i].TDATE+`</td>   `
			html += `</tr>                                                                                                                        `
		}            
		$("input[type=checkbox]").prop("checked",false);
	}
	else {
		html += "<tr class=\"list_contents\" style=\"height: 350px;\">";
		html += "<td colspan=\"4\">조회된 데이터가 없습니다.</td>";
		html += "</tr>";
	}
	
	$(".pop_list tbody").html(html);
	
	$(".sscroll").slimScroll({
		width : "100%",
		height: "350px"
	});
}


//거래처 등록, 수정 
function make_comp_pop(ck, str ,result1) {
	var ajax = "";
	if (ck == 1) {
		ajax = "custcodeAddAjax";
	} else if (ck == 2) {
		ajax = "custcodeUpdateAjax";
	} 
	console.log(result1);
	var html ="";
		html += `<form action="#" id="compForm" method="post">                                      `;
		html += `	<input name="comp_g_no" id="comp_g_no" type="hidden"> `;
		html += `	<table class="pop_table"> `;
		html += `		<colgroup>            `;
		html += `			<col width="20%"> `;
		html += `			<col width="30%"> `;
		html += `			<col width="20%"> `;
		html += `			<col width="30%"> `;
		html += `		</colgroup>           `;
		html += `		<tbody>               `;
		html += `			<tr>              `;
		html += `				<td class="field_name first_field_name">등급명</td>                                    `;
		html += `				<td class="field_contents">                                                            `;
		if (ck == 1 || ck == 2) {
			html += `<input class="input_normal" id="cust_grade_nm" name="cust_grade_nm" placeholder="등급명" type="text" >                     `;
		} else if (ck == 3 || ck == 4) {
			html += `<input class="input_normal" id="emp_grade_nm" name="emp_grade_nm" placeholder="등급명" type="text" >                     `;
		}
		html += `				</td>                                                                                  `;
		html += `				<td class="field_name">등급 레벨</td>                                                  `;
		html += `				<td class="field_contents">                                                            `;
		if (ck == 1 || ck == 2) {
			html += `<input class="input_normal" id="cust_grade_lvl" name="cust_grade_lvl" placeholder="레벨" type="text" >                   `;
		} else if (ck == 3 || ck == 4) {
			html += `<input class="input_normal" id="emp_grade_lvl" name="emp_grade_lvl" placeholder="레벨" type="text" >                   `;
		}
		html += `				</td> `;                                                                               
		html += `			</tr>     `;
		html += `		</tbody>      `;
		html += `	</table>          `;
		html += `</form>              `;
		makeTwoBtnPopup(2, str, html, true, 500, 200, function() {
			//텍스트 숫자 포맷팅
			$("#cust_grade_lvl").on("keyup", function() {
				 $(this).val($(this).val().replace(/[^0-9]/g,""));
			});
			// 버튼 크기 자동 조절
		    $('.btn').each(function() {
		        if($(this).html().length > 2) {
		            var leng_diff = $(this).html().length - 2;
		            $(this).width($(this).width() + (10 * leng_diff) + "px");  
		        }
		    });
		}, str , function() {
				var params = $("#ctgForm").serialize();
			
				$.ajax({
					type : "post", //데이터 전송방식
					url : ajax , //주소
					dataType : "json", //데이터 전송 규격
					data : params, //보낼 데이터
					// {키: 값, 키:값, ...} - > json
					
					success : function(result){
						if(result.res == "SUCCESS"){
							closePopup(2);
							makeAlert(2, str+" 성공", str+"되었습니다.", null);
							getlist(1);
						} else{
							makeAlert(2, str+" 오류", str+"에 실패하였습니다.", null);
						}
					} , 
					error : function(request,status,error) {
						console.log("status : "+request.status);
						console.log("text : "+request.responseText);
						console.log("error : "+error);
					}
					
				});
		},"취소", function() {
			closePopup(2);
		}); 
	 	
	 	if(ck == 2) {
	 		$("#cust_g_no").val(result1.data.GRADE_NO);
			$("#cust_grade_nm").val(result1.data.GRADE_NM);
			$("#cust_grade_lvl").val(result1.data.GRADE_LEVEL);
	 	} else if(ck == 4) {
	 		$("#emp_g_no").val(result1.data.GRADE_NO);
			$("#emp_grade_nm").val(result1.data.GRADE_NM);
			$("#emp_grade_lvl").val(result1.data.GRADE_LEVEL);
	 	}
	 	
}

// 고객등급 리스트 Draw
function drawgradeList(ck,list) {
	var html = "";
	if(list.length > 0) {
		
		for(var i in list) {
			html += `<tr class="list_contents" name="`+list[i].GRADE_NO+`">                                                                              `;
			html += `	<td width="80px" nowrap style="cursor : default;" class="chk_td">                                                                             `;
			html += `		<div class="squaredOne">                                                                                              `;
			html += `			<input type="checkbox" class="list_chbox" value="`+list[i].GRADE_NO+`" style="display : none;" id="chk_`+list[i].GRADE_NO+`" name="pop_check" />   `;
			html += `			<label class="chbox_lbl" for="chk_`+list[i].GRADE_NO+`"></label>                                                                         `;
			html += `		</div>                                                                                                                `;
			html += `	</td>                                                                                                                     `;
			if(ck == 1) {
				html += `	<td  width="95px" nowrap style="cursor : default;"><input name="`+list[i].GRADE_NO+`"type="button" class="pop_update" id="cust_g_no" value="수정"/></td>                                `;
			} else if (ck == 2) {
				html += `	<td  width="95px" nowrap style="cursor : default;"><input name="`+list[i].GRADE_NO+`"type="button" class="pop_update" id="emp_g_no" value="수정"/></td>                                `;
			}
			html += `	<td  width="75px" nowrap>`+list[i].GRADE_LEVEL+`</td>                                                                                                  `;
			html += `	<td  width="130px" nowrap>`+list[i].GRADE_NM+`</td>                                                                                                  `;
			html += `</tr>                                                                                                                        `;
		}            
		$("input[type=checkbox]").prop("checked",false);
	}
	else {
		html += "<tr class=\"list_contents\" style=\"height: 350px;\">";
		html += "<td colspan=\"4\">조회된 데이터가 없습니다.</td>";
		html += "</tr>";
	}
	
	$(".pop_list tbody").html(html);
	
	$(".sscroll").slimScroll({
		width : "100%",
		height: "350px"
	});
}

//고객 등급 등록, 수정 
function make_custgrade_pop(ck, str ,result1) {
	var ajax = "";
	if (ck == 1) {
		ajax = "custcodeAddAjax";
	} else if (ck == 2) {
		ajax = "custcodeUpdateAjax";
	} else if ( ck == 3) {
		ajax = "empcodeAddAjax";
	} else if (ck == 4) {
		ajax = "empcodeUpdateAjax";
	}
	console.log(result1);
	var html ="";
		html += `<form action="#" id="ctgForm" method="post">                                      `;
		if (ck == 1 || ck == 2) {
			html += `	<input name="cust_g_no" id="cust_g_no" type="hidden"> `;
		} else if (ck == 3 || ck == 4) {
			html += `	<input name="emp_g_no" id="emp_g_no" type="hidden" > `;
		}
		html += `	<table class="pop_table"> `;
		html += `		<colgroup>            `;
		html += `			<col width="20%"> `;
		html += `			<col width="30%"> `;
		html += `			<col width="20%"> `;
		html += `			<col width="30%"> `;
		html += `		</colgroup>           `;
		html += `		<tbody>               `;
		html += `			<tr>              `;
		html += `				<td class="field_name first_field_name">등급명</td>                                    `;
		html += `				<td class="field_contents">                                                            `;
		if (ck == 1 || ck == 2) {
			html += `<input class="input_normal" id="cust_grade_nm" name="cust_grade_nm" placeholder="등급명" type="text" >                     `;
		} else if (ck == 3 || ck == 4) {
			html += `<input class="input_normal" id="emp_grade_nm" name="emp_grade_nm" placeholder="등급명" type="text" >                     `;
		}
		html += `				</td>                                                                                  `;
		html += `				<td class="field_name">등급 레벨</td>                                                  `;
		html += `				<td class="field_contents">                                                            `;
		if (ck == 1 || ck == 2) {
			html += `<input class="input_normal" id="cust_grade_lvl" name="cust_grade_lvl" placeholder="레벨" type="text" >                   `;
		} else if (ck == 3 || ck == 4) {
			html += `<input class="input_normal" id="emp_grade_lvl" name="emp_grade_lvl" placeholder="레벨" type="text" >                   `;
		}
		html += `				</td> `;                                                                               
		html += `			</tr>     `;
		html += `		</tbody>      `;
		html += `	</table>          `;
		html += `</form>              `;
		makeTwoBtnPopup(2, str, html, true, 500, 200, function() {
			//텍스트 숫자 포맷팅
			$("#cust_grade_lvl").on("keyup", function() {
				 $(this).val($(this).val().replace(/[^0-9]/g,""));
			});
			// 버튼 크기 자동 조절
		    $('.btn').each(function() {
		        if($(this).html().length > 2) {
		            var leng_diff = $(this).html().length - 2;
		            $(this).width($(this).width() + (10 * leng_diff) + "px");  
		        }
		    });
		}, str , function() {
				var params = $("#ctgForm").serialize();
			
				$.ajax({
					type : "post", //데이터 전송방식
					url : ajax , //주소
					dataType : "json", //데이터 전송 규격
					data : params, //보낼 데이터
					// {키: 값, 키:값, ...} - > json
					
					success : function(result){
						if(result.res == "SUCCESS"){
							closePopup(2);
							makeAlert(2, str+" 성공", str+"되었습니다.", null);
							getlist(1);
						} else{
							makeAlert(2, str+" 오류", str+"에 실패하였습니다.", null);
						}
					} , 
					error : function(request,status,error) {
						console.log("status : "+request.status);
						console.log("text : "+request.responseText);
						console.log("error : "+error);
					}
					
				});
		},"취소", function() {
			closePopup(2);
		}); 
	 	
	 	if(ck == 2) {
	 		$("#cust_g_no").val(result1.data.GRADE_NO);
			$("#cust_grade_nm").val(result1.data.GRADE_NM);
			$("#cust_grade_lvl").val(result1.data.GRADE_LEVEL);
	 	} else if(ck == 4) {
	 		$("#emp_g_no").val(result1.data.GRADE_NO);
			$("#emp_grade_nm").val(result1.data.GRADE_NM);
			$("#emp_grade_lvl").val(result1.data.GRADE_LEVEL);
	 	}
	 	
}
/* 등급 코드  끝*/
function getLeftMenu() {
	var params = $("#locationForm").serialize();
	
	$.ajax({
		type : "post",
		url : "commonLeftMenuAjax",
		dataType : "json",
		data : params,
		success : function(result) {
			drawLeftMenu(result.leftMenu);			
		},
		error : function(request, status, error) {
			console.log("status : " + request.status);
			console.log("text : " + request.responseText);
			console.log("error : " + error);
		}
	});
}

function drawLeftMenu(menu) {
	var secDepthCheck = true;
	var html = "";
	
	for(var i = 0 ; i < menu.length ; i++) {
		if(menu[i].MENU_DEPTH == 1) {
			if(menu[i].CNT > 0) { //하위메뉴 존재 시
				html += "<div class=\"first_menu_wrap\">";
				
				html += "<div class=\"first_menu\" menuno=\"" + menu[i].MENU_NO + "\">";
				html += "<div>";
				html += "<div class=\"menu_txt\">" + menu[i].MENU_NAME + "</div>";
				html += "<div class=\"menu_gbn\"></div>";
				html += "</div>";
				html += "</div>";
				
				html += "<div class=\"second_menu_wrap\">";
				
				for(var j = 0 ; j < menu.length ; j++) {
					if(menu[i].MENU_NO == menu[j].TOP_MENU_NO) {
						if(menu[j].MENU_NO == $("#menuNo").val()) { //현재 메뉴 구분
							html += "<div class=\"second_menu_on\" menuno=\"" + menu[j].MENU_NO + "\" ";
							if(typeof menu[j].MENU_ADDR != "undefined") { 
								html += " addr=\"" + menu[j].MENU_ADDR + "\">";
							} else {
								html += ">";
							}
							
							html += "<div>" + menu[j].MENU_NAME + "</div>";
							html += "</div>";
						} else {
							html += "<div class=\"second_menu\" menuno=\"" + menu[j].MENU_NO + "\" ";
							if(typeof menu[j].MENU_ADDR != "undefined") { 
								html += " addr=\"" + menu[j].MENU_ADDR + "\">";
							} else {
								html += ">";
							}
							html += "<div>" + menu[j].MENU_NAME + "</div>";
							html += "</div>";
						}
					}
				}
				html += "</div>";
				
				html += "</div>";
				
			} else { //하위메뉴 없을 시
				if(menu[i].MENU_NO == $("#menuNo").val()) { //현재 메뉴 구분
					html += "<div class=\"first_menu_on\" menuno=\"" + menu[i].MENU_NO + "\" addr=\"" + menu[i].MENU_ADDR + "\">";
					html += "<div>";
					html += "<div class=\"menu_txt\">" + menu[i].MENU_NAME + "</div>";
					html += "</div>";
					html += "</div>";
					
					secDepthCheck = false;
				} else {
					html += "<div class=\"first_menu\" menuno=\"" + menu[i].MENU_NO + "\" addr=\"" + menu[i].MENU_ADDR + "\">";
					html += "<div>";
					html += "<div class=\"menu_txt\">" + menu[i].MENU_NAME + "</div>";
					html += "</div>";
					html += "</div>";
				}
			}
		}
	} // menu for end
	
	$(".menu_wrap").html(html);

	var flow = [];
	
	for(var i = 0 ; i < menu.length ; i++) {
		if(menu[i].MENU_NO == $("#menuNo").val()) {
			flow = menu[i].MENU_FLOW.split(",");
			
			if(secDepthCheck) {
				$("[menuno='" + menu[i].TOP_MENU_NO + "']").parent().attr("class", "first_menu_wrap_on");
			}
			break;
		}
	}
	
	var gnb = "";
	
	for(var i = 0 ; i < menu.length ; i++) {
		for(var j = 0 ; j < flow.length ; j++) {
			if(menu[i].MENU_NO == flow[j]) {
				gnb += " > " + menu[i].MENU_NAME;
			}
		}
	}
	
	$("#gnb_txt").html(gnb);
}
</script>
<form action="#" id="locationForm" method="post">
		<input type="hidden" id="menuNo" name="menuNo" value="${param.menuNo}" />
	</form>
	<div class="left_wrap">
		<div class="logo_wrap">
			<div>
				<img src="resources/images/Eimages/EasysShopLogo.PNG"> EASYS SHOP
			</div>
		</div>
		<div class="menu_wrap">
		</div>
	</div>
	<!-- 우측 -->
	<div class="right_wrap">
		<div class="gnb_wrap">
			<div class="gnb_area">
				<div>
					<div>Home<span id="gnb_txt"></span></div>
				</div>
			</div>
			<div class="person_area">
				<div class="p_img"></div>
				<div class="p_info">
					<div>
						<div>
							${sEmpName} ${sEmpPosiName}<br />${sTeamName}
						</div>
					</div>
				</div>
				<div class="p_btn_area">
					<div class="p_btn">
						<div>
							<div>정보수정</div>
						</div>
					</div>
					<div class="p_btn_space"></div>
					<div class="p_btn" id="logoutBtn">
						<div>
							<div>로그아웃</div>
						</div>
					</div>
				</div>
			</div>
		</div>