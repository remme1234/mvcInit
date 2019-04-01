<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

$(function() {

	var dataPreferences = {
		//시리즈 배열은 데이터의 집합으로 여기서 나타내는 건 초기값을 지정해 줍니다.
	    series: [
	        [25, 30, 20, 25]
	    ]
	};

	var optionsPreferences = {
		//아래의 값은 파이차트의 크기 및 화면을 설정하기 위해 사용합니다.
	    donut: true,
	    donutWidth: 40,
	    startAngle: 0,
	    height: "245px",
	    total: 100,
	    showLabel: false,
	    axisX: {
	        showGrid: false
	    }
	};
	
	/*  
		파이차트를 만드는 js로, 위의 dataPreferneces와 optionPreferences를 이용해서
		id가 chartPreferences인 div에 만듭니다.
	*/ 
	Chartist.Pie('#chartPreferences', dataPreferences, optionsPreferences);
	
 	var contry = new Array();
	var percent = new Array();			
	
	// 각각의 나라의 이름과 비율을 반복문을 이용하여 contry 배열과 percent 배열을 반복하며 그 값을 변수에 넣습니다.
 	<c:forEach items="${hanqPieList}" var="hanqPieList" varStatus="status">
 		contry[<c:out value="${status.index}"/>] = ('<c:out value="${hanqPieList.country}"/>');
		percent[<c:out value="${status.index}"/>] = ('<c:out value="${hanqPieList.percent}"/>');
	</c:forEach> 
	
	/* 	
		DB에서 가져온 값을 화면에서 그래프로 표현하기 위해서
		위에서는 contry의 값과 percent 값을 param을 이용하여 가져왔고 해당 값을
		파이차트를 구성하는 label과 serise의 값에 넣어 파이차트를 만듭니다.
	*/
	Chartist.Pie('#chartPreferences', {
	  labels: contry,
	  series: percent
	});
	
	/* 	
		그래프상의 나라별 색을 목차로 나타내기 위하여 선택한 요소 뒤에 값을 추가하는 제이쿼리.after를 사용합니다. 
		아래 아이콘 태그에 .text-info 등의 클래스를 추가했기 때문에 위에서 반복문으로 지정해준 0,1,2의 값을
		클래스에 값을 넣어서 표현하도록 합니다. 	
		
		만약 추가적으로 3개 이상의 나라가 차트에 표현되어야 하면 bootstrap.min.css에 있는 text클래스 명을 이용하여
		추가적으로 <i>태그와 클래스를 추가하면 화면에서 표한 할 수 있습니다.
	*/ 
	$(".text-info").after(contry[0]);
	$(".text-danger").after(contry[1]);
	$(".text-warning").after(contry[2]);
	$(".text-success").after(contry[3]);
	
});

</script>
<form id="welcomeFrm" name="welcomeFrm">

</form>
<div class="container-fluid">
	<div class="row">
    	<div class="col-md-6">
        	<div class="card">
            	<div class="header">
                       	가입한 유저의 국적 통계
                	<p class="category">Hanq Pie Chart</p>
                </div>
                <div class="content">
                	<div id="chartPreferences" class="ct-chart "></div>
                </div>
                <div class="footer">
                	<h6>Legend</h6>
                    <i class="fa fa-circle text-warning"></i>
                    <i class="fa fa-circle text-danger"></i>
                    <i class="fa fa-circle text-info"></i>
                    <i class="fa fa-circle text-success"></i>
                </div>
            </div>
        </div>
   	</div>
</div>