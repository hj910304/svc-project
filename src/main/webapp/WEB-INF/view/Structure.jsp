<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.example.demo.DTO" %>
<%@ page import="com.example.demo.DAO" %>
<%@ page import="java.util.List" %>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/resources/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/assets/libs/css/style.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/resources/assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <title>SVC Home</title>
</head>

<script>
function goDetail(id){
	console.log(id);
	document.location.href="/detail?id="+id+"&flag="+0;
}

function goMain(){
	document.location.href="/main";
}
function goIntro(){
	document.location.href="/Intro";
	
}
function goStructure(){
	document.location.href="/Structure";
}
</script>




<body>


   <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
     <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand"  href="javascript:goMain();">SK주식회사 C&C 행복 펀딩!</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                           <li class="nav-item ">
                                <a class="nav-link" href="javascript:goIntro();"><!-- <i class="fa fa-fw fa-user-circle"> </i>-->SVC 크라우드 펀딩이란? <!-- <span class="badge badge-success">6</span> --></a>
                       
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:goMain();"><!-- <i class="fa fa-fw fa-user-circle"> </i>-->SVC 크라우드 펀딩 Dashboard <!-- <span class="badge badge-success">6</span> --></a>
                       			
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:goStructure();"><!-- <i class="fa fa-fw fa-user-circle"> </i>-->SVC 크라우드 펀딩 페이지 구조 <!-- <span class="badge badge-success">6</span> --></a>
                       			
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- wrapper  -->
        <!-- ============================================================== -->

웹페이지 구조 어떤 식으로 구성했는지 쓰는 부분
controller에서 jsp 불러서 rest controller 불러서 처리하구 그런거를 다이어그램으로 만들어서jpg 같은걸루 export해서
붙이고
 
</body>>
