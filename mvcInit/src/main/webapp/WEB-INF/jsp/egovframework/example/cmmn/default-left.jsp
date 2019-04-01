<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	var left = {
		pageSubmitFn : function(menu) {
			$("#frm").attr("action", menu + ".do");
			$("#pageName").val(menu);
			
			$("#frm").submit();
		}		
	};
	
	$(document).ready(function() {
		 var pageName = "<c:out value="${param.pageName}"/>";
		 
		$(".menu").removeClass("active");
		$("#" + pageName).addClass("active");
		
		$(".menu").click(function() {
			var menu = $(this).attr("id");
			
			left.pageSubmitFn(menu);
		});
	});
</script>

<form id="frm">
	<input type="hidden" id="pageName" name="pageName"/>
</form>

<div class="sidebar" data-color="orange" data-image="img/full-screen-image-3.jpg">
     <!--

         Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
         Tip 2: you can also add an image using data-image tag

     -->

    <div class="logo">
        <a href="http://www.creative-tim.com" class="logo-text">
            Creative Tim
        </a>
    </div>
	<div class="logo logo-mini">
		<a href="http://www.creative-tim.com" class="logo-text">
			Ct
		</a>
	</div>

   	<div class="sidebar-wrapper">
           <div class="user">
               <div class="photo">
                   <img src="img/default-avatar.png" />
               </div>
               <div class="info">
                   <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                       Tania Andrew
                       <b class="caret"></b>
                   </a>
                   <div class="collapse" id="collapseExample">
                       <ul class="nav">
                           <li><a href="#">My Profile</a></li>
                           <li><a href="#">Edit Profile</a></li>
                           <li><a href="#">Settings</a></li>
                       </ul>
                   </div>
               </div>
           </div>

           <ul class="nav">
               <li id="main" class="menu active">
                   <a href="#">
                       <i class="pe-7s-graph"></i>
                       <p>Dashboard</p>
                   </a>
               </li>
               <li id="welcomeWeb" class="menu active">
                   <a href="#">
                       <i class="pe-7s-graph"></i>
                       <p>welcomeWeb</p>
                   </a>
               </li>
               <li id="pieChart" class="menu active">
                   <a href="#">
                       <i class="pe-7s-graph"></i>
                       <p>pieChart</p>
                   </a>
               </li>
               <li id="tableList" class="menu active">
                   <a href="#">
                       <i class="pe-7s-graph"></i>
                       <p>tableList</p>
                   </a>
               </li>
           </ul>
   	</div>
</div>
