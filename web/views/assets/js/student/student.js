
/*=============================================
Cuando olvidó la clave
=============================================*/

function toggoleForm(show,hide) {


	$("."+show).show();
	$("."+hide).hide();
}

/*=============================================
Buscador de cursos
=============================================*/

$("#searchMyCourse").on("keyup", function () {

	var q = $(this).val().toLowerCase();

	$("#listCourses li").each(function () {
		
		var text  = $(this).text().toLowerCase();
		$(this).toggle(text.includes(q));

	})

})

/*=============================================
Subir foto de perfil
=============================================*/

if($("#profile_photo").length > 0){

	$("#profile_photo").change(function(e){

		var file = e.target.files[0];
		if (!file) return;

		var reader = new FileReader();

		reader.onload = function(event) {

			$(".profile-photo-large img").attr("src", event.target.result);
		}

		reader.readAsDataURL(file);

	})
}

/*=============================================
Reproductor Player
=============================================*/

var player = new Plyr('#player', {
    controls: ['play-large', 'play', 'progress', 'current-time', 'mute', 'volume', 'settings', 'fullscreen'],
    settings: ['quality', 'speed'],
    quality: {
        default: 720,
        options: [1080, 720, 480, 360]
    }
});

function cambiarVideo(src){

	player.source = {
    type: 'video',
    sources: [
      {
        src: src,
        type: 'video/mp4'
      }
    ]
  };
}

cambiarVideo($("#player source").attr("src"));

/*=============================================
Cambiar de lección
=============================================*/

$(document).on("click",".thisLection",function(){

	/*=============================================
	Subir scroll a la parte superior
	=============================================*/

	$("html, body").animate({ scrollTop: 0 }, 500);

	/*=============================================
	Pausamos el video
	=============================================*/

	player.pause();

	/*=============================================
	Capturamos la ruta del video
	=============================================*/

	var video = $(this).attr("video");

	/*=============================================
	Capturamos las etiquetas con la clase thisLection
	=============================================*/

	var thisLection = $(".thisLection");

	thisLection.each((i)=>{

	    $(thisLection[i]).removeClass("bg-academy");

	 })

	$(this).addClass("bg-academy");

	$(".text-white")
    .removeClass("text-white")
    .addClass("text-muted");

    $(this).find(".text-muted")
    .removeClass("text-muted")
    .addClass("text-white");

    /*=============================================
	Visualizar el Preload
	=============================================*/

     $(".preloadVideo").css({"opacity":1,"z-index":1000});

    if(video == ""){

    	$(".plyr").hide();

    	/*=============================================
		Mostramos contenido HTML
		=============================================*/

    	var html = $(this).attr("html");

    	$("#contentHTML").html(atob(html));

    	$(".video-player-section").css({"overflow-y":"scroll","background":"white"});

    }else{

    	$(".plyr").show();

    	$("#contentHTML").html('');

    	$(".video-player-section").css({"overflow-y":"hidden","background":"black"});

	    /*=============================================
		Disparamos la función cambiar Video
		=============================================*/

	    cambiarVideo(video)  

	}

	$(".preloadVideo").animate({"opacity":0,"z-index":-10},1250);

})

/*=============================================
Gestionar avances de lecturas
=============================================*/

/*=============================================
Q&A - Load questions
=============================================*/

function loadQuestions(){

	var idCourse = $("#askCourseId").val();
	var tokenStudent = $("#askTokenStudent").val();

	var data = new FormData();
	data.append("action","list");
	data.append("idCourse", idCourse);
	data.append("tokenStudent", tokenStudent);

	$.ajax({
	    url: baseURL+"/ajax/questions.ajax.php",
	    method: "POST",
	    data: data,
	    contentType: false,
	    cache: false,
	    processData: false,
	    success: function (response){

	    	var questions = JSON.parse(response);
	    	var html = "";

	    	if(questions.length == 0){

	    		html = '<div class="text-center text-muted py-4"><i class="fas fa-inbox mr-2"></i> No questions yet. Be the first to ask!</div>';

	    	}else{

	    		$.each(questions, function(i, q){

	    			var photo = q.picture_student ? q.picture_student : 'https://placehold.co/100';
	    			var hasAnswer = q.answer_question ? true : false;

	    			html += '<div class="question-item border-bottom pb-3 mb-3">';
	    			html += '  <div class="d-flex">';
	    			html += '    <div class="question-content flex-grow-1">';
	    			html += '      <h6 class="mb-1">';
	    			html += '        <a href="#" class="text-dark question-title">'+q.title_question+'</a>';
	    			if(hasAnswer){
	    				html += '      <span class="badge badge-success ml-2"><i class="fas fa-check mr-1"></i>Answered</span>';
	    			}
	    			html += '      </h6>';
	    			html += '      <p class="text-muted small mb-1">'+q.content_question+'</p>';

	    			if(hasAnswer){
	    				html += '      <div class="bg-light p-3 rounded mb-2">';
	    				html += '        <small class="font-weight-bold text-success"><i class="fas fa-reply mr-1"></i>Answer:</small>';
	    				html += '        <p class="small mb-0">'+q.answer_question+'</p>';
	    				html += '      </div>';
	    			}

	    			html += '      <div class="d-flex align-items-center">';
	    			html += '        <img src="'+photo+'" alt="User" class="rounded-circle mr-2" style="width: 24px; height: 24px; object-fit: cover;">';
	    			html += '        <small class="text-muted">'+(q.name_student || 'Student')+', '+q.date_created_question+'</small>';
	    			html += '      </div>';
	    			html += '    </div>';
	    			html += '  </div>';
	    			html += '</div>';

	    		});

	    	}

	    	$("#questionsList").html(html);

	    }
	})

}

$(document).on("show.bs.tab", "#qa-tab", function(){
	$("#questionsList").html('<div class="text-center text-muted py-4"><i class="fas fa-spinner fa-spin mr-2"></i> Loading questions...</div>');
	loadQuestions();
});

/*=============================================
Q&A - Search questions
=============================================*/

$("#searchQuestions").on("keyup", function(){

	var q = $(this).val().toLowerCase();

	$("#questionsList .question-item").each(function(){
		var text = $(this).text().toLowerCase();
		$(this).toggle(text.includes(q));
	});

});

/*=============================================
Q&A - Submit question
=============================================*/

$("#askQuestionForm").on("submit", function(e){

	e.preventDefault();

	var btn = $("#askQuestionSubmit");
	btn.prop("disabled", true).html('<i class="fas fa-spinner fa-spin mr-2"></i> Submitting...');

	var title = $("#questionTitle").val();
	var content = $("#questionContent").val();
	var idCourse = $("#askCourseId").val();
	var tokenStudent = $("#askTokenStudent").val();
	var idLection = $("#askIdLection").val();

	var data = new FormData();
	data.append("action","create");
	data.append("titleQuestion", title);
	data.append("contentQuestion", content);
	data.append("idCourse", idCourse);
	data.append("tokenStudent", tokenStudent);
	data.append("idLection", idLection);

	$.ajax({
	    url: baseURL+"/ajax/questions.ajax.php",
	    method: "POST",
	    data: data,
	    contentType: false,
	    cache: false,
	    processData: false,
	    success: function (response){

	    	var result = JSON.parse(response);

	    	if(result.status == 200){

	    		$("#askQuestionModal").modal("hide");
	    		$("#askQuestionForm")[0].reset();
	    		showAlert("success", "Question submitted successfully!");
	    		loadQuestions();

	    	}else{

	    		showAlert("error", "Failed to submit question. Please try again.");

	    	}

	    	btn.prop("disabled", false).html('<i class="fas fa-paper-plane mr-2"></i> Submit question');

	    },
	    error: function(){
	    	showAlert("error", "Something went wrong. Please try again.");
	    	btn.prop("disabled", false).html('<i class="fas fa-paper-plane mr-2"></i> Submit question');
	    }
	})

});

/*=============================================
Q&A - Reset modal on close
=============================================*/

$("#askQuestionModal").on("hidden.bs.modal", function(){
	$("#askQuestionForm")[0].reset();
	$("#askQuestionSubmit").prop("disabled", false).html('<i class="fas fa-paper-plane mr-2"></i> Submit question');
});

/*=============================================
Q&A - Initialize current lection
=============================================*/

var firstLection = $(".thisLection.bg-academy").find(".checkLection").val();
if(firstLection){
	$("#askIdLection").val(firstLection.split("_")[1]);
}

/*=============================================
Q&A - Update current lection when changing lessons
=============================================*/

$(document).on("click",".thisLection",function(){
	var value = $(this).find(".checkLection").val();
	if(value){
		$("#askIdLection").val(value.split("_")[1]);
	}
});

$(document).on("change",".checkLection",function(){

	var action = "add";

	if($(this).prop("checked") == false){

		action = "remove";
		 
	}

	var value = $(this).val();
	var tokenStudent = $("#tokenStudent").val();

	var data = new FormData();
	data.append("action",action);
	data.append("value",value);
	data.append("tokenStudent", tokenStudent);

	$.ajax({
	    url:baseURL+"/ajax/student.ajax.php",
	    method: "POST",
	    data: data,
	    contentType: false,
	    cache: false,
	    processData: false,
	    success: function (response){
	    	
	    	console.log("response", response);

	    }

	})

})