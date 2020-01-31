<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 거래처 코드 목록  -->
<div id="popup_wrap">
<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Company_Code pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						거래처 코드 관리
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<table class="pop_table">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						<tr>
							<td class="field_name first_field_name">검색어</td>
							<td class="field_contents">
								<input class="input_size pxsize200" type="text">
								<input type="button" class="btn_normal btn_size_normal" value="검색"/>&nbsp; &nbsp; &nbsp; &nbsp;
								<input type="button" class="btn_normal btn_size_normal" value="등록"/>
<!-- 								<input type="button" class="btn_normal btn_size_normal" value="수정"/> -->
								<input type="button" class="btn_normal btn_size_normal" value="삭제"/>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="pop_Sales_list widthscroll">
				<table class="table_list tborder pxsize1650 " id="pop_Procedure_list" >
					<colgroup>
						<col width="3%">
						<col width="5%">
						<col width="5%">
						<col width="5%">
						<col width="6%">
						<col width="6%">
						<col width="6%">
						<col width="6%">
						<col width="6%">
						<col width="9%">
						<col width="5%">
						<col width="7%">
						<col width="5%">
						<col width="5%">
						<col width="5%">
						<col width="10%">
						<col width="6%">
					</colgroup>
					<thead>
					<tr class="table_list_header padding0a10" >
						<td>
							<div class="squaredOne_h">
								<input type="checkbox" value="None" style="display : none;" id="pop_CP_checkall"  />
								<label for="pop_CP_checkall"  ></label> <!-- squaredOne 같이? -->
							</div>
						</td>
						<td>수정</td>
						<td>NO</td>
						<td>거래처명</td>
						<td>전화1</td>
						<td>전화2</td>
						<td>핸드폰</td>
						<td>FAX</td>
						<td>이메일</td>
						<td>담당자</td>
						<td>사업자번호</td>
						<td>대표자</td>
						<td>업태</td>
						<td>종목</td>
						<td>홈페이지</td>
						<td>등록일</td>
					</tr>
					</thead>
				</table>
				<div>
					<table class="table_list tborder pxsize1650" id="pop_Procedure_list" style="table-layout: fixed" >
						<colgroup>
							<col width="3%">
							<col width="5%">
							<col width="5%">
							<col width="5%">
							<col width="6%">
							<col width="6%">
							<col width="6%">
							<col width="6%">
							<col width="6%">
							<col width="9%">
							<col width="5%">
							<col width="7%">
							<col width="5%">
							<col width="5%">
							<col width="5%">
							<col width="10%">
							<col width="6%">
						</colgroup>
						<tbody>
							<tr class="list_contents padding0a10">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CP_squaredOne1" name="pop_CP_check" />
										<label for="pop_CP_squaredOne1"></label>
									</div>
								</td>	
								<td style="cursor : default;"><input type="button" value="수정"/></td>
								<td>1</td>					
								<td>NT</td>					
								<td>0220202020</td>					
								<td>0220202020</td>					
								<td>01012341234</td>					
								<td>0220202020</td>					
								<td >NTeofbd@hanmail.net</td>					
								<td>홍길순</td>					
								<td>115-15042-28</td>					
								<td>홍길동</td>					
								<td style="max-width: 80px;">생산업,도매업,소매업</td>					
								<td>조경</td>		
								<td>NTeofbd.co.kr</td>			
								<td>2019-12-17</td>
							</tr>					
							<tr class="list_contents padding0a10">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CP_squaredOne2" name="pop_CP_check" />
										<label for="pop_CP_squaredOne2"></label>
									</div>
								</td>	
								<td style="cursor : default;"><input type="button" value="수정"/></td>
								<td>1</td>					
								<td>NT</td>					
								<td>0220202020</td>					
								<td>0220202020</td>					
								<td>01012341234</td>					
								<td>0220202020</td>					
								<td>NTeofbd@hanmail.net</td>					
								<td>홍길순</td>					
								<td>115-15042-28</td>					
								<td>홍길동</td>					
								<td>생산업,도매업,소매업</td>					
								<td>조경</td>		
								<td>NTeofbd.co.kr</td>			
								<td>2019-12-17</td>
							</tr>					
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- 거래처 코드 목록 팝업 - 등록,수정팝업 -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Company_Code_add pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						거래처 등록
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="15%">
							<col width="35%">
							<col width="15%">
							<col width="35%">
						</colgroup>
						<tbody>
							
							 <tr>
			                    <td class="field_name first_field_name">관리그룹명</td>
								<td class="field_contents">
									<input class="input_normal"   type="text">
								</td>
			                    <td class="field_name">담당자</td>
			                    <td class="field_contents">
			                    	<input class="input_size size40" type="text">
									<input type="button" class="btn_normal btn_size_normal" value="검색"/>
			                    </td>
			                </tr>
							<tr>
								<td class="field_name first_field_name">거래처 구분</td>
								<td class="field_contents" colspan="3">
									<label><input type="radio" value="매출처" name="Sales_VAT_radio">매출처</label>
									<label><input type="radio" value="매입처" name="Sales_VAT_radio">매입처</label>
									<label><input type="radio" value="기타거래처" name="Sales_VAT_radio">기타거래처</label>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">거래처명</td>
								<td class="field_contents" colspan="3">
									<input class="input_normal  backcolorred"   type="text">
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">사업자번호</td>
								<td class="field_contents">
									 <input type="text" class="input_size size20" maxlength="3" />
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="5"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="5"/>
								</td>
								<td class="field_name first_field_name">대표자</td>
								<td>
									<input class="input_normal " type="text">
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">업태</td>
								<td class="field_contents">
									<input class="input_normal" type="text">
								</td>
								<td class="field_name first_field_name">종목</td>
								<td>
									<input class="input_normal " type="text">
								</td>
							</tr>
							 <tr>
			                    <td class="field_name first_field_name">주소</td>
			                    <td class="field_contents" colspan="3">
			                        <div class="address_margin">
			                            <input type="text" class="input_short input_readonly" readonly="readonly" placeholder="우편번호"/>
			                            <div class="btn btn_black btn_size_normal">검색</div>
			                        </div>
			                        <div class="address_margin">
			                            <input type="text" class="input_normal input_readonly" readonly="readonly" placeholder="주소"/>
			                        </div>
			                        <div><input type="text" class="input_normal" placeholder="상세주소"/></div>
			                    </td>
		                	</tr>
							 <tr>
			                    <td class="field_name first_field_name">전화1
			                    <td class="field_contents">
			                        <input type="text" class="input_size size20" maxlength="4" />
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                    </td>
			                    <td class="field_name">전화2</td>
			                    <td class="field_contents">
			                         <input type="text" class="input_size size20" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                    </td>
			                </tr>
							 <tr>
			                    <td class="field_name first_field_name">핸드폰
			                    <td class="field_contents">
			                        <input type="text" class="input_size size20" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                    </td>
			                    <td class="field_name">FAX</td>
			                    <td class="field_contents">
			                         <input type="text" class="input_size size20" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                    </td>
			                </tr>
			                <tr>
			                    <td class="field_name first_field_name">이메일</td>
			                    <td class="field_contents">
			                       <input type="text" class="input_normal" />
			                    </td>
			                    <td class="field_name">홈페이지</td>
			                    <td class="field_contents">
			                         <input type="text" class="input_normal" />
			                    </td>
			                </tr>
			               
			                <tr>
			                    <td class="field_name first_field_name">메모</td>
			                    <td class="field_contents" colspan="3">
			                        <textarea class="textarea_normal"></textarea>
			                    </td>
			                </tr>
						</tbody>
					</table>
				<div class="pop_btn_bottom_area">
					<input type="button" class="btn_normal btn_size_normal" value="확인"/>
					<input type="button" class="btn_normal btn_size_normal" value="취소"/>
				</div>
			</div>
		</div>
	</div>
	<!-- 상품 코드 목록 팝업  -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Company_Code pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						거래처 등록
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<table class="pop_table">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						<tr>
							<td class="field_name first_field_name">검색어</td>
							<td class="field_contents">
								<input class="input_size pxsize200" type="text">
								<input type="button" class="btn_normal btn_size_normal" value="검색"/>&nbsp; &nbsp; &nbsp; &nbsp;
								<input type="button" class="btn_normal btn_size_normal" value="등록"/>
<!-- 								<input type="button" class="btn_normal btn_size_normal" value="수정"/> -->
								<input type="button" class="btn_normal btn_size_normal" value="삭제"/>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="pop_Sales_list widthscroll">
				<table class="table_list tborder pxsize1510 " id="pop_Procedure_list" >
					<colgroup>
						<col width="40px">
						<col width="60px">
						<col width="150px">
						<col width="100px">
						<col width="100px">
						<col width="150px">
						<col width="100px">
						<col width="150px">
						<col width="150px">
						<col width="150px">
						<col width="100px">
						<col width="80px">
						<col width="80px">
						<col width="100px">
					</colgroup>
					<thead>
					<tr class="table_list_header padding0a10" >
						<td>
							<div class="squaredOne_h">
								<input type="checkbox" value="None" style="display : none;" id="pop_PC_checkall"  />
								<label for="pop_PC_checkall"  ></label> <!-- squaredOne 같이? -->
							</div>
						</td>
						<td>NO</td>
						<td>상품명</td>
						<td>VAT포함</td>
						<td>판매단가</td>
						<td>판매가(VAT포함)</td>
						<td>매입단가</td>
						<td>매입가(VAT포함)</td>
						<td>적립POINT(현금)</td>
						<td>적립POINT(카드)</td>
						<td>매입처</td>
						<td>규격</td>
						<td>단위</td>
						<td>등록일</td>
					</tr>
					</thead>
				</table>
				
				<table class="table_list tborder pxsize1510" id="pop_Procedure_list" >
					<colgroup>
						<col width="40px">
						<col width="60px">
						<col width="150px">
						<col width="100px">
						<col width="100px">
						<col width="150px">
						<col width="100px">
						<col width="150px">
						<col width="150px">
						<col width="150px">
						<col width="100px">
						<col width="80px">
						<col width="80px">
						<col width="100px">
					</colgroup>
					<tbody>
						<tr class="list_contents padding0a10">
							<td style="cursor : default;">
								<div class="squaredOne">
									<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne1" name="pop_PC_check" />
									<label for="pop_PC_squaredOne1"></label>
								</div>
							</td>					
							<td>1</td>					
							<td>헤라</td>					
							<td>yes</td>					
							<td>9,091</td>					
							<td>10,000</td>					
							<td>8,182</td>					
							<td>9,000</td>					
							<td>1,000</td>					
							<td>500</td>					
							<td>미용실</td>					
							<td>1</td>					
							<td>1</td>					
							<td>2019-12-17</td>
						</tr>					
						<tr class="list_contents padding0a10">
							<td style="cursor : default;">
								<div class="squaredOne">
									<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne1" name="pop_PC_check" />
									<label for="pop_PC_squaredOne1"></label>
								</div>
							</td>					
							<td>1</td>					
							<td>헤라</td>					
							<td>yes</td>					
							<td>9,091</td>					
							<td>10,000</td>					
							<td>8,182</td>					
							<td>9,000</td>					
							<td>1,000</td>					
							<td>500</td>					
							<td>미용실</td>					
							<td>1</td>					
							<td>1</td>					
							<td>2019-12-17</td>
						</tr>					
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- 상품 코드 목록 팝업 - 등록,수정팝업 -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Sales_Code_add pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						시술 코드
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="30%">
							<col width="20%">
							<col width="30%">
						</colgroup>
						<tbody>
							
							<tr>
								<td class="field_name first_field_name">분류</td>
								<td class="field_contents colorred" >
									<input class="input_normal  backcolorred" type="text">
								</td>
								<td class="field_name first_field_name">상품규격</td>
								<td>
									<input class="input_normal" type="text">
								</td>
							</tr>
								<tr>
								<td class="field_name first_field_name">매입처</td>
								<td class="field_contents">
									<input class="input_normal" style="width: 70px;" type="text">
									<input type="button" class="btn_normal pxsize60" value="검색"/>
								</td>
								<td class="field_name first_field_name">상품단위</td>
								<td>
									<input class="input_normal" type="text">
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">VAT포함여부</td>
								<td class="field_contents">
									
									<label><input type="radio" value="VAT포함" name="Sales_VAT_radio">VAT포함</label>
									
									<label><input type="radio" value="VAT미포함" name="Sales_VAT_radio">VAT미포함</label>
								</td>
								<td class="colorred"colspan="2">단가에 부가세 포함여부를 선택해주세요</td>
							</tr>
							<tr>
								<td class="field_name first_field_name" rowspan="2" >판매단가</td>
								<td class="field_contents" rowspan="2" >
									<input class="input_normal txtalignright" style="border-bottom : 0px;" value=""  id="Sales_Sales_Money" type="text">
								</td>
								<td class="field_name first_field_name backcolorwhite" rowspan="2">
								</td>
								<td class="field_name first_field_name backcolorwhite" style="font-weight: 300;" rowspan="2">
									<div class="Sale_Money_area">
									공급가<input class="txtalignright noborder size60 backcolorwhite" disabled="disabled" onkeyup="inputNumberFormat(this)" value="" id="Sales_Supply_Money" type="text">원
									</div>
									<div class="Sale_Money_area">
									부가세<input class="txtalignright noborder size60 backcolorwhite" disabled="disabled" onkeyup="inputNumberFormat(this)" value="" id="Sales_VAT_Money" type="text">원
									</div>
									<div class="Sale_Money_area">
									판매가<input class="txtalignright noborder size60 backcolorwhite" disabled="disabled" onkeyup="inputNumberFormat(this)" value="" id="Sales_Total_Money" type="text">원
									</div>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td class="field_name first_field_name" rowspan="2" >매입단가</td>
								<td class="field_contents" rowspan="2" >
									<input class="input_normal txtalignright" style="border-bottom : 0px;"id="Purchase_Sales_Money" type="text">
								</td>
								<td class="field_name first_field_name backcolorwhite" rowspan="2">
								</td>
								<td class="field_name first_field_name backcolorwhite" style="font-weight: 300;" rowspan="2">
									<div class="Sale_Money_area">
									공급가<input class="txtalignright noborder size60 backcolorwhite" disabled="disabled" onkeyup="inputNumberFormat(this)" value="" id="Purchase_Supply_Money"  type="text">원
									</div>
									<div class="Sale_Money_area">
									부가세<input class="txtalignright noborder size60 backcolorwhite" disabled="disabled" onkeyup="inputNumberFormat(this)" value="" id="Purchase_VAT_Money" type="text">원
									</div>
									<div class="Sale_Money_area">
									판매가<input class="txtalignright noborder size60 backcolorwhite" disabled="disabled" onkeyup="inputNumberFormat(this)" value="" id="Purchase_Total_Money" type="text">원
									</div>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td class="field_name first_field_name">현금적립포인트</td>
								<td class="field_contents">
									<input class="input_normal txtalignright" onkeyup="inputNumberFormat(this)"  type="text">
								</td>
								<td class="field_name first_field_name">카드적립포인트</td>
								<td>
									<input class="input_normal txtalignright" onkeyup="inputNumberFormat(this)"  type="text">
								</td>
							</tr>
						</tbody>
					</table>
				<div class="pop_btn_bottom_area">
					<input type="button" class="btn_normal btn_size_normal" value="확인"/>
					<input type="button" class="btn_normal btn_size_normal" value="취소"/>
				</div>
			</div>
		</div>	
	</div>
	<!-- 시술 등급 목록 팝업  -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Procedure_Code pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						시술 코드 관리
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
					<div class="pop_btn_bottom_area">
						<input type="button" class="btn_normal btn_size_normal" value="등록"/>
<!-- 						<input type="button" class="btn_normal btn_size_normal" value="수정"/> -->
						<input type="button" class="btn_normal btn_size_normal" value="삭제"/>
						<input type="button" class="btn_normal btn_size_normal pxsize200" value="적립 포인트 일괄 변경"/>
					</div>
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>
						<tbody>
							<tr>
								<td class="field_name first_field_name">검색어</td>
								<td class="field_contents">
									<input class="input_size size60" type="text">
									<input type="button" class="btn_normal btn_size_normal" value="검색"/>
								</td>
							</tr>
						</tbody>
					</table>
					<table class="table_list tborder" id="pop_Procedure_list" >
						<colgroup>
							<col width="3%">
							<col width="17%">
							<col width="25%">
							<col width="15%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<thead>
						<tr class="table_list_header" >
							<td rowspan="2">
								<div class="squaredOne_h">
									<input type="checkbox" value="None" style="display : none;" id="pop_PC_checkall"  />
									<label for="pop_PC_checkall"  ></label> <!-- squaredOne 같이? -->
								</div>
							</td>
							<td rowspan="2">그룹명</td>
							<td colspan="2">기본정보</td>
							<td colspan="2">적립정보</td>
						</tr>
						
						<tr class="table_list_header" >
							<td>시술명</td>
							<td>요금</td>
							<td>현금적립금</td>
							<td>카드적립금</td>
						</tr>
						</thead>
					</table>
				<div class="pop_schedule_contents">
					<div class="pop_Procedure_list">
					<table class="table_list tborder" id="pop_Procedure_list" >
						<colgroup>
							<col width="3%">
							<col width="17%">
							<col width="25%">
							<col width="15%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<tbody>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne1" name="pop_PC_check" />
										<label for="pop_PC_squaredOne1"></label>
									</div>
								</td>
								<td rowspan="3">기타</td>
								<td>기타</td>
								<td>10,000</td>
								<td>0</td>
								<td>0</td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne2" name="pop_PC_check" />
										<label for="pop_PC_squaredOne2"></label>
									</div>
								</td>
								<td>붙임머리</td>
								<td>75,000</td>
								<td>7,500</td>
								<td>3,750</td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne3" name="pop_PC_check" />
										<label for="pop_PC_squaredOne3"></label>
									</div>
								</td>
								<td>올림머리</td>
								<td>30,000</td>
								<td>3,000</td>
								<td>1,500</td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne4" name="pop_PC_check" />
										<label for="pop_PC_squaredOne4"></label>
									</div>
								</td>
								<td rowspan="3">드라이</td>
								<td>드라이</td>
								<td>15,000</td>
								<td>0</td>
								<td>0</td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne5" name="pop_PC_check" />
										<label for="pop_PC_squaredOne5"></label>
									</div>
								</td>
								<td>매직드라이</td>
								<td>15,000</td>
								<td>1,500</td>
								<td>750</td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_PC_squaredOne6" name="pop_PC_check" />
										<label for="pop_PC_squaredOne6"></label>
									</div>
								</td>
								<td>웨이브드라이</td>
								<td>10,000</td>
								<td>1,000</td>
								<td>500</td>
						</tr>
						</tbody>
					</table>
					</div>
				</div>
			</div>
	</div>
	<!-- 시술 코드 목록 팝업 - 등록,수정팝업 -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Procedure_Code_add pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						시술 코드
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="30%">
							<col width="25%">
							<col width="25%">
						</colgroup>
						<tbody>
							
							<tr>
								<td class="field_name first_field_name">분류</td>
								<td class="field_contents colorred" colspan="3">
									<select class="input_size pxsize150 backcolorred"> 
										<option selected="selected">분류를 선택해주세요</option>
										<option>드라이</option>
										<option>컷</option>
										<option>펌</option>
										<option>염색</option>
										<option>크리닉</option>
										<option>기타</option>
									</select>
									해당 분류가 없으면 직접 입력해 주세요
								</td>
							</tr>
								<tr>
								<td class="field_name first_field_name">시술명</td>
								<td class="field_contents">
									<input class="input_normal  backcolorred"   type="text">
								</td>
								<td class="field_name first_field_name">현금적립포인트</td>
								<td>
									<input class="input_normal txtalignright" onkeyup="inputNumberFormat(this)"  type="text">
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">요금</td>
								<td class="field_contents">
									<input class="input_normal txtalignright" onkeyup="inputNumberFormat(this)"  type="text">
								</td>
								<td class="field_name first_field_name">카드적립포인트</td>
								<td>
									<input class="input_normal txtalignright" onkeyup="inputNumberFormat(this)"  type="text">
								</td>
							</tr>
						</tbody>
					</table>
				<div class="pop_btn_bottom_area">
					<input type="button" class="btn_normal btn_size_normal" value="확인"/>
					<input type="button" class="btn_normal btn_size_normal" value="취소"/>
				</div>
			</div>
		</div>
	</div>
	<!-- 고객 등급 목록 팝업  -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Customer_Grade pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						고객 등급 코드
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>
						<tbody>
							
							<tr>
								<td class="field_name first_field_name">검색어</td>
								<td class="field_contents">
									<input class="input_size size60" type="text">
									<input type="button" class="btn_normal btn_size_normal" value="검색"/>
								</td>
							</tr>
						</tbody>
					</table>
					<table class="table_list padding0a10">
						<colgroup>
							<col width="10%">
							<col width="31%">
							<col width="25%">
							<col width="17%">
							<col width="17%">
						</colgroup>
						<thead>
							<tr class="table_list_header">
								<td>
									<div class="squaredOne_h">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_checkall"  />
										<label for="pop_CG_checkall"  ></label> <!-- squaredOne 같이? -->
									</div>
								</td>
								<td>등급명</td>
								<td>레벨</td>
								<td>수정</td>
							</tr>
						</thead>
					</table>
					<div class="pop_Customer_list">
					<table class="table_list tborder padding0a10">
						<colgroup>
							<col width="10%">
							<col width="31%">
							<col width="25%">
							<col width="17%">
							<col width="17%">
						</colgroup>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_squaredOne1" name="pop_CG_check" />
										<label for="pop_CG_squaredOne1"></label>
									</div>
								</td>
								<td>Bronze</td>
								<td>1</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_squaredOne2" name="pop_CG_check" />
										<label for="pop_CG_squaredOne2"></label>
									</div>
								</td>
								<td>Silver</td>
								<td>2</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_squaredOne3" name="pop_CG_check" />
										<label for="pop_CG_squaredOne3"></label>
									</div>
								</td>
								<td>Gold</td>
								<td>3</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_squaredOne4" name="pop_CG_check" />
										<label for="pop_CG_squaredOne4"></label>
									</div>
								</td>
								<td>Platinum</td>
								<td>4</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_squaredOne5" name="pop_CG_check" />
										<label for="pop_CG_squaredOne5"></label>
									</div>
								</td>
								<td>Diamond</td>
								<td>5</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_squaredOne6" name="pop_CG_check" />
										<label for="pop_CG_squaredOne6"></label>
									</div>
								</td>
								<td>Master</td>
								<td>6</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_CG_squaredOne7" name="pop_CG_check" />
										<label for="pop_CG_squaredOne7"></label>
									</div>
								</td>
								<td>Challenger</td>
								<td>7</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
					</table>
					</div>
					<div class="pop_btn_bottom_area">
						<input type="button" class="btn_normal btn_size_normal" value="코드등록"/>
						<input type="button" class="btn_normal btn_size_normal" value="삭제"/>
						<input type="button" class="btn_normal btn_size_normal" value="취소"/>
					</div>
				</div>
			</div>
	</div>
	<!-- 고객 등급 목록 팝업 - 등록,수정팝업 -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Customer_Grade_add pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						고객 등급 등록
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>
						<tbody>
							
							<tr>
								<td class="field_name first_field_name">검색어</td>
								<td class="field_contents">
									<input class="input_normal " placeholder="등급명을 입력하신뒤 등록을 클릭하세요" type="text">
								</td>
							</tr>
						</tbody>
					</table>
				<div class="pop_btn_bottom_area">
					<input type="button" class="btn_normal btn_size_normal" value="등록"/>
					<input type="button" class="btn_normal btn_size_normal" value="취소"/>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 직급 등급 목록 팝업  -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Employee_Grade pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						직급 코드
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>
						<tbody>
							
							<tr>
								<td class="field_name first_field_name">검색어</td>
								<td class="field_contents">
									<input class="input_size size60" type="text">
									<input type="button" class="btn_normal btn_size_normal" value="검색"/>
								</td>
							</tr>
						</tbody>
					</table>
					<table class="table_list padding0a10">
						<colgroup>
							<col width="10%">
							<col width="31%">
							<col width="25%">
							<col width="17%">
							<col width="17%">
						</colgroup>
						<tr class="table_list_header">
							<td>
								<div class="squaredOne_h">
									<input type="checkbox" value="None" style="display : none;" id="pop_EMP_checkall"  />
									<label for="pop_EMP_checkall"  ></label> <!-- squaredOne 같이? -->
								</div>
							</td>
							<td>직급명</td>
							<td>레벨</td>
							<td>수정</td>
						</tr>
					</table>
					<div class="pop_Employee_list">
					<table class="table_list tborder padding0a10">
						<colgroup>
							<col width="10%">
							<col width="31%">
							<col width="25%">
							<col width="17%">
							<col width="17%">
						</colgroup>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_EMP_squaredOne1" name="pop_EMP_check" />
										<label for="pop_EMP_squaredOne1"></label>
									</div>
								</td>
								<td>대표</td>
								<td>1</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_EMP_squaredOne2" name="pop_EMP_check" />
										<label for="pop_EMP_squaredOne2"></label>
									</div>
								</td>
								<td>점장</td>
								<td>2</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_EMP_squaredOne3" name="pop_EMP_check" />
										<label for="pop_EMP_squaredOne3"></label>
									</div>
								</td>
								<td>실장</td>
								<td>3</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_EMP_squaredOne4" name="pop_EMP_check" />
										<label for="pop_EMP_squaredOne4"></label>
									</div>
								</td>
								<td>디자이너</td>
								<td>4</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_EMP_squaredOne9" name="pop_EMP_check" />
										<label for="pop_EMP_squaredOne9"></label>
									</div>
								</td>
								<td>스탭</td>
								<td>9</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
						<tr class="list_contents">
								<td style="cursor : default;">
									<div class="squaredOne">
										<input type="checkbox" value="None" style="display : none;" id="pop_EMP_squaredOne10" name="pop_EMP_check" />
										<label for="pop_EMP_squaredOne10"></label>
									</div>
								</td>
								<td>알바</td>
								<td>10</td>
								<td style="cursor : default;"><input type="button" value="수정"/></td>
						</tr>
					</table>
					</div>
					<div class="pop_btn_bottom_area">
						<input type="button" class="btn_normal btn_size_normal" value="코드등록"/>
						<input type="button" class="btn_normal btn_size_normal" value="삭제"/>
						<input type="button" class="btn_normal btn_size_normal" value="취소"/>
					</div>
				</div>
			</div>
	</div>
	<!-- 직급 등급 목록 팝업 - 등록,수정팝업 -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Employee_Grade_add pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						직원 등급 등록
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="40%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<tbody>
							
							<tr>
								<td class="field_name first_field_name">직급명</td>
								<td class="field_contents">
									<input class="input_normal backcolorred" placeholder="직급명을 입력하신뒤 등록을 클릭하세요" type="text">
								</td>
								<td class="field_name first_field_name">레벨</td>
								<td class="field_contents">
									<input class="input_normal backcolorred" type="text">
								</td>
							</tr>
						</tbody>
					</table>
				<div class="pop_btn_bottom_area">
					<input type="button" class="btn_normal btn_size_normal" value="등록"/>
					<input type="button" class="btn_normal btn_size_normal" value="취소"/>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 계정 코드 목록 팝업  -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Account_Code pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						계정 코드
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_btn_bottom_area padding0a10">
					<input type="button" class="btn_normal btn_size_normal " value="코드등록"/>
<!-- 					<input type="button" class="btn_normal btn_size_normal " value="수정"/> -->
					<input type="button" class="btn_normal btn_size_normal " value="삭제"/>
				</div>
				<table class="pop_table">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						
						<tr>
							<td class="field_name first_field_name">검색어</td>
							<td class="field_contents">
								<input class="input_size size70" type="text">
								<input type="button" class="btn_normal btn_size_normal " value="검색"/> 
							</td>
						</tr>
					</tbody>
				</table> 
				<table class="table_list  padding0a10">
					<colgroup>
						<col width="5%">
						<col width="10%">
						<col width="15%">
						<col width="15%">
						<col width="31%">
						<col width="12%">
						<col width="12%">
					</colgroup>
					<tr class="table_list_header nopadding ">
						<td>
							<div class="squaredOne_h">
								<input type="checkbox" value="None" style="display : none;" id="pop_Acc_checkall"  />
								<label for="pop_Acc_checkall"  ></label> <!-- squaredOne 같이? -->
							</div>
						</td>
						<td >NO</td>
						<td>계정코드</td>
						<td>계정구분</td>
						<td>계정명</td>
						<td>수정</td>
					</tr>
				</table>
				<div class="pop_Account_list">
				<table class="table_list tborder  padding0a10">
					<colgroup>
						<col width="5%">
						<col width="10%">
						<col width="15%">
						<col width="15%">
						<col width="31%">
						<col width="12%">
						<col width="12%">
					</colgroup>
					<tr class="list_contents nopadding">
							<td style="cursor : default;">
								<div class="squaredOne">
									<input type="checkbox" value="None" style="display : none;" id="pop_Acc_squaredOne1" name="pop_EMP_check" />
									<label for="pop_Acc_squaredOne1"></label>
								</div>
							</td>
							<td>1</td>
							<td>101</td>
							<td>매출</td>
							<td>시술매출</td>
							<td style="cursor : default;"><input type="button" value="수정"/></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- 계정 코드 목록 팝업 - 등록,수정팝업 -->
	<div class="pop_wrap pop_off">
		<div class="pop_bg"></div>
			<div class="pop pop_size_Account_Code_add pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						계정 코드 등록
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table">
						<colgroup>
							<col width="20%">
							<col width="35%">
							<col width="20%">
							<col width="25%">
						</colgroup>
						<tbody>
							
							<tr>
								<td class="field_name first_field_name">계정구분</td>
								<td class="field_contents">
									<select class="input_size pxsize150 backcolorred"> 
										<option selected="selected">매입</option>
										<option>매매</option>
										<option>매출</option>
									</select>
								</td>
								<td class="field_name first_field_name">계정코드</td>
								<td class="field_contents">
									<input class="input_normal backcolorred" type="text">
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">계정명</td>
								<td class="field_contents" colspan="3">
									<input class="input_normal backcolorred" placeholder="상품정보를입력하신뒤 등록을 클릭하세요" type="text">
								</td>
							</tr>
						</tbody>
					</table>
				<div class="pop_btn_bottom_area">
					<input type="button" class="btn_normal btn_size_normal" value="등록"/>
					<input type="button" class="btn_normal btn_size_normal" value="취소"/>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 일정 등록 팝업 -->
	<div class="pop_wrap pop_off" id="popup_calander">
		<div class="pop_bg"></div>
			<div class="pop pop_size_calendar pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						일정  등록
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose" id="popup_calander_Close"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table" >
						<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>
						<tbody>
							<tr>
								<td class="field_name first_field_name">일정구분</td>
								<td class="field_contents">
									<select class="input_size pxsize100"> 
										<option selected="selected">일별일정</option>
										<option>월별일정</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">일시</td>
								<td class="field_contents">
									<input class="input_size pxsize130" name="startDate" id="startDate1" type="date" value="">
									<select class="input_size pxsize100"> 
										<option selected="selected">오전 12시</option>
										<option>오전 01시</option>
										<option>오전 02시</option>
										<option>오전 03시</option>
										<option>오전 04시</option>
										<option>오전 05시</option>
										<option>오전 06시</option>
										<option>오전 07시</option>
										<option>오전 08시</option>
										<option>오전 09시</option>
										<option>오전 10시</option>
										<option>오전 11시</option>
										<option>오후 12시</option>
										<option>오후 01시</option>
										<option>오후 02시</option>
										<option>오후 03시</option>
										<option>오후 04시</option>
										<option>오후 05시</option>
										<option>오후 06시</option>
										<option>오후 07시</option>
										<option>오후 08시</option>
										<option>오후 09시</option>
										<option>오후 10시</option>
										<option>오후 11시</option>
									</select>
									<select class="input_size pxsize100"> 
										<option selected="selected">00분</option>
										<option>10분</option>
										<option>20분</option>
										<option>30분</option>
										<option>40분</option>
										<option>50분</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">담당자</td>
								<td class="field_contents">
									<input class="input_size size70" type="text">
									<input type="button" class="btn_normal btn_size_normal" value="검색"/>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">색상</td>
								<td class="field_contents">
									 <select class="input_normal inputModal" name="color" id="edit-color">
	                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
	                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
	                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
	                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
	                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
	                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
	                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
	                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
	                                    <option value="#495057" style="color:#495057;">검정색</option>
	                                </select>
								</td>
							</tr>
							
							<tr>
								<td class="field_name first_field_name">일정내용</td>
								<td class="field_contents">
									<input class="input_normal" type="text">
								</td>
							</tr>
						</tbody>
					</table>
					<div class="pop_btn_bottom_area">
							<input type="button" class="btn_normal btn_size_normal" value="등록"/>
							<input type="button" class="btn_normal btn_size_normal cancelBtn" value="취소"/>
					</div>
				</div>
			</div>
	</div>
	<!-- 예약 등록 팝업 -->
	<div class="pop_wrap pop_off" id="popup_reservation">
		<div class="pop_bg"></div>
			<div class="pop pop_size_schedule pop_white">
				<div class="pop_title_area">
					<div class="pop_title_text">
						<img src="resources/images/Eimages/EasysShopLogo.PNG" class="pop_icon"> 
						예약 등록
					</div>
					<div class="pop_close">
						<img src="resources/images/Eimages/button/icon_del_white.png" class="BtnPopClose" id="popup_reservation_Close"/>
					</div>
				</div>
				<div class="pop_schedule_contents">
					<table class="pop_table" >
						<colgroup>
							<col width="20%">
							<col width="80%">
						</colgroup>
						<tbody>
							<tr>
								<td class="field_name first_field_name">일시</td>
								<td class="field_contents">
									<input class="input_size pxsize130" name="startDate" id="startDate" type="date" value="">
									<select class="input_size pxsize100"> 
										<option selected="selected">오전 12시</option>
										<option>오전 01시</option>
										<option>오전 02시</option>
										<option>오전 03시</option>
										<option>오전 04시</option>
										<option>오전 05시</option>
										<option>오전 06시</option>
										<option>오전 07시</option>
										<option>오전 08시</option>
										<option>오전 09시</option>
										<option>오전 10시</option>
										<option>오전 11시</option>
										<option>오후 12시</option>
										<option>오후 01시</option>
										<option>오후 02시</option>
										<option>오후 03시</option>
										<option>오후 04시</option>
										<option>오후 05시</option>
										<option>오후 06시</option>
										<option>오후 07시</option>
										<option>오후 08시</option>
										<option>오후 09시</option>
										<option>오후 10시</option>
										<option>오후 11시</option>
									</select>
									<select class="input_size pxsize100"> 
										<option selected="selected">00분</option>
										<option>10분</option>
										<option>20분</option>
										<option>30분</option>
										<option>40분</option>
										<option>50분</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">고객명</td>
								<td class="field_contents">
									<input class="input_size size70" type="text">
									<input type="button" class="btn_normal btn_size_normal" value="검색"/>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">연락처
			                    <td class="field_contents">
			                        <input type="text" class="input_size size20" maxlength="4" />
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                        <span>- </span>
			                        <input type="text" class="input_size size30" maxlength="4"/>
			                    </td>
		                    </tr>
							<tr>
								<td class="field_name first_field_name">담당자</td>
								<td class="field_contents">
									<input class="input_size size70" type="text">
									<input type="button" class="btn_normal btn_size_normal" value="검색"/>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">색상</td>
								<td class="field_contents">
									 <select class="input_normal inputModal" name="color" id="edit-color">
	                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
	                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
	                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
	                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
	                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
	                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
	                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
	                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
	                                    <option value="#495057" style="color:#495057;">검정색</option>
	                                </select>
								</td>
							</tr>
							<tr>
								<td class="field_name first_field_name">예약내용</td>
								<td class="field_contents">
									<input class="input_normal" type="text">
								</td>
							</tr>
						</tbody>
					</table>
					<div class="pop_btn_bottom_area">
												<input type="button" class="btn_normal btn_size_normal" value="등록"/>
							<input type="button" class="btn_normal btn_size_normal cancelBtn" value="취소"/>
					</div>
				</div>
			</div>
	</div>
</div>