<?php

require_once "../controllers/curl.controller.php";

class QuestionsAjax{

	public $action;
	public $idCourse;
	public $tokenStudent;
	public $titleQuestion;
	public $contentQuestion;
	public $idLection;

	public function listQuestions(){

		$url = "relations?rel=questions,students&type=question,student&linkTo=id_course_question,status_question&equalTo=".$this->idCourse.",1&select=id_question,title_question,content_question,answer_question,id_student_question,name_student,picture_student,date_created_question&orderBy=date_created_question&orderMode=DESC";
		$method = "GET";
		$fields = array();

		$getQuestions = CurlController::request($url,$method,$fields);

		if($getQuestions->status == 200){
			echo json_encode($getQuestions->results);
		}else{
			echo json_encode([]);
		}

	}

	public function createQuestion(){

		$fields = "title_question=".urlencode($this->titleQuestion).
			"&content_question=".urlencode($this->contentQuestion).
			"&id_course_question=".$this->idCourse.
			"&id_lection_question=".($this->idLection ?: 0).
			"&id_student_question=".$_SESSION["student"]->id_student.
			"&status_question=1".
			"&date_created_question=".date("Y-m-d");

		$url = "questions?token=".$this->tokenStudent."&table=students&suffix=student";
		$method = "POST";

		$createQuestion = CurlController::request($url,$method,$fields);

		echo json_encode($createQuestion);

	}

}

if(isset($_POST["action"])){

	$ajax = new QuestionsAjax();
	$ajax -> action = $_POST["action"];

	if($_POST["action"] == "list"){
		$ajax -> idCourse = $_POST["idCourse"];
		$ajax -> listQuestions();
	}

	if($_POST["action"] == "create"){
		session_start();
		$ajax -> tokenStudent = $_POST["tokenStudent"];
		$ajax -> idCourse = $_POST["idCourse"];
		$ajax -> titleQuestion = $_POST["titleQuestion"];
		$ajax -> contentQuestion = $_POST["contentQuestion"];
		$ajax -> idLection = $_POST["idLection"] ?? 0;
		$ajax -> createQuestion();
	}

}
