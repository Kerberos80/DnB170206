<!-- 2017. 2. 2. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- CSS -->
<style type="text/css">

/* content 가로크기 849px*/
* { padding: 0; margin: 0 }

/*************************************************************** 
	< Table 속성 >	
	table-layout:fixed; // 셀의 너비를 고정 시킴 (단, 너비 이상의 문자열은 밖으로 튀어나감) 
	word-break:break-all; // 고정된 셀 너비 이상의 문자열은 아랫줄로 개행 시킴
***************************************************************/

.First-Body { position:relative; width: 800px; top: 100px; left: 10%;}
.First-Body table, tr, td, th { position:relative; border: 1px solid #bcbcbc; }
.First-Body table { width: 100%; table-layout:fixed; word-break:break-all; border-collapse: collapse; }
.First-Body .Option-Row { height: 50px; vertical-align: middle; text-align: center; background-color: #D9D8DD; }
.First-Body .Option-Row #Duration { width: 40px; }
.First-Body .Option-Row #Search-Filter { height: 22px; }
.First-Body .List-Row { height: 500px; vertical-align: top; } /* 이부분은 테스트를 위한 height 이므로 실 구현시 가변 크기로 둘 것! */
.First-Body .List-Row .Column-Name { background-color: #C6CFD8; }
/* .First-Body .List-Row Task-List, Case-List { position: relative; top: 5px;} */
/* .First-Body td { vertical-align: middle; text-align: center; } */
/* .First-Body td:nth-child(1) { background-color: aqua;} // td 에 적용하면 해당 column 전체에 적용 됨 */ 
/* .First-Body tr:nth-child(1) { height: 50px; } // tr 에 적용하면 해당 row 전체에 적용됨 */
/* .First-Body tr:nth-child(2) { height: 500px; } */ 
</style>

<!-- JavaScript -->
<script type="text/javascript">
</script>

</head>

<body>
	<div class="First-Body">
		<table>
			<colgroup> <!-- 테이블의 column 너비를 지정 -->
				<col width="30%" /> <!-- left column width -->
				<col width="70%" /> <!-- right column width -->
			</colgroup>
			<tr class="Option-Row">
				<td>
					<button accesskey="I">새로고침(I)</button>
					<button accesskey="R">선택화면실행(R)</button>
				</td>
				<td>
					<label>최근</label>
					<!-- type="number" 는  maxlength 값이 적용되지 않음 : CSS 에서 width 값으로 조정 -->
					<input type="number" id="Duration" min="1" max="30" value="30">
					<label>일간 인기대여목록</label>
					<select id="Search-Filter">
						<option value="">전체</option>
						<option>DVD</option>
						<option>Bluray</option>																					
					</select>
					<button accesskey="S">확인(S)</button>
					<button accesskey="P">인쇄(P)</button>									
				</td>
			</tr>
			<tr class="List-Row">
				<td>
					<!-- 여기는 JQGID 를 동적으로 뿌린다 -->
					<div class="Task-List">
						<p>Task-JQGrid</p>
						<table>							
							<tr>
								<th class="Column-Name">업무</th><th class="Column-Name">관련수</th>
							</tr>
							<tr>
								<td>기한초과목록</td><td>5건</td>
							</tr>
							<tr>
								<td>오늘마감목록</td><td>5건</td>
							</tr>
							<tr>
								<td>내일마감목록</td><td>0건</td>
							</tr>
							<tr>
								<td>예약초과목록</td><td>0건</td>
							</tr>
						</table>
					</div>
				</td>
				<td>
					<!-- 여기는 JQGID 를 동적으로 뿌린다 -->
					<div class="Case-List">
						<p>CaseList-JQGrid</p>
						<table>
							<tr>
								<th class="Column-Name">영화명</th><th class="Column-Name">품명</th><th class="Column-Name">시리얼</th>
							</tr>
							<tr>
								<td>영화1</td><td>DVD</td><td>DVD-0000001</td>
							</tr>
							<tr>
								<td>영화1</td><td>Bluray</td><td>Bluray-0000001</td>
							</tr>
							<tr>
								<td>영화2</td><td>Bluray</td><td>Bluray-0000007</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>