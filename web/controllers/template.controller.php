<?php 

class TemplateController{


	/*=============================================
	Traemos la vista principal de la plantilla
	=============================================*/

	public function index(){

		include "views/template.php";
	}

	/*=============================================
	Función para dar formato a las fechas
	=============================================*/

	static public function formatDate($type, $value){

		if($type == 0){

			list($hours, $minutes, $seconds) = explode(":", $value);

			$totalMinutes = ($hours * 60) + $minutes;

			return $totalMinutes . " min";
		}

		// Crear un objeto DateTime con la fecha
		$fecha = new DateTime($value, new DateTimeZone('America/Bogota'));

		$meses = array(
			'January' => 'enero', 'February' => 'febrero', 'March' => 'marzo',
			'April' => 'abril', 'May' => 'mayo', 'June' => 'junio',
			'July' => 'julio', 'August' => 'agosto', 'September' => 'septiembre',
			'October' => 'octubre', 'November' => 'noviembre', 'December' => 'diciembre'
		);

		$mesesCorto = array(
			'Jan' => 'ene', 'Feb' => 'feb', 'Mar' => 'mar',
			'Apr' => 'abr', 'May' => 'may', 'Jun' => 'jun',
			'Jul' => 'jul', 'Aug' => 'ago', 'Sep' => 'sep',
			'Oct' => 'oct', 'Nov' => 'nov', 'Dec' => 'dic'
		);

		$dias = array(
			'Monday' => 'lunes', 'Tuesday' => 'martes', 'Wednesday' => 'miércoles',
			'Thursday' => 'jueves', 'Friday' => 'viernes', 'Saturday' => 'sábado',
			'Sunday' => 'domingo'
		);

		$resultado = '';

		if($type == 1){
			$resultado = $fecha->format('d') . ' de ' . $meses[$fecha->format('F')] . ', ' . $fecha->format('Y');
		}

		if($type == 2){
			$resultado = $mesesCorto[$fecha->format('M')] . ' ' . $fecha->format('Y');
		}

		if($type == 3){
			$resultado = $fecha->format('d - m - Y');
		}

		if($type == 4){
			$resultado = $dias[$fecha->format('l')] . ' ' . $fecha->format('d') . ' de ' . $meses[$fecha->format('F')] . ' ' . $fecha->format('Y') . ' a las ' . $fecha->format('h A');
		}

		if($type == 5){
			$resultado = $fecha->format('d/m/Y');
		}

		if($type == 6){
			$resultado = $fecha->format('h:i A');
		}

		if($type == 7){
			$resultado = $dias[$fecha->format('l')] . ' ' . $fecha->format('d') . ' de ' . $meses[$fecha->format('F')] . ', ' . $fecha->format('Y');
		}

		if($type == 8){
			$resultado = $fecha->format('Y-m-d');
		}

		return $resultado;

	}

	/*=============================================
	Función para generar códigos alfanuméricos aleatorios
	=============================================*/

	static public function genPassword($length){

		$password = "";
		$chain = "0123456789abcdefghijklmnopqrstuvwxyz";

		$password = substr(str_shuffle($chain),0,$length);

		return $password;
	}

	/*=============================================
	Función para generar números aleatorios
	=============================================*/

	static public function genCode($length){

		$code = "";
		$chain = "0123456789";

		$code = substr(str_shuffle($chain),0,$length);

		return $code;
	}

}
