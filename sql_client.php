<?php
include "sql_server.php";
include "sql_config.php";


try{
	$mysql = new sql_server($ip_server_v2, $server_user_v2, $pass_v2, $bbdd_v2);
	$text=$_SERVER['argv'];
	$camp=explode("?",$text[0]);
	switch($camp[0])
	{
		case 'login2'://Para el client_php
			$sql="SELECT nameStudent, idStudent FROM students WHERE ";
			if($camp[1]!=null)
			{
				$constraints=explode("&",$camp[1]);
				$n=0;
				foreach ($constraints as $constraint)
				{
					$term=explode("=",$constraint);
					if($n!=0)
					{
						$sql=$sql." AND ";
					}
					$n++;
					$sql=$sql.$term[0]."='".$term[1]."'";
				}
				$return = 0;
				$info=$mysql->executeQuery($sql, &$return , "SELECT", "students");
				if($return==1)
				{
					$login['state']=$info['state'];
					$login['name']=$info['data'][0]['nameStudent'];
					$login['student_id']=$info['data'][0]['idStudent'];
					$info=$login;				
				}else{
					$login['state']="Failed";
					if($info['state']=="SQL") $login['message']="Error, incorrect login.";
					if($info['state']=="BBDD") $login['message']="Error, could not connect.";
					$info=$login;
				}
			}
		break;
		case 'verify'://Para el client_php
			$sql="SELECT nameStudent, idStudent FROM students WHERE ";
			if($camp[1]!=null)
			{
				$constraints=explode("&",$camp[1]);
				$term=explode("=",$constraints[0]);
				if($term[0]=="idStudent")
				{
					$sql=$sql."idStudent=".$term[1]." LIMIT 1";
				}
				$return = 0;
				$info=$mysql->executeQuery($sql, &$return , "SELECT", "students");
				if($return==1)
				{
					$login['state']=$info['state'];
					$login['name']=$info['data']['nameStudent'];
					$login['student_id']=$info['data']['idStudent'];
					$info=$login;
				}else{
					$login['state']="Failed";
					if($info['state']=="SQL") $login['message']="Error, incorrect login.";
					if($info['state']=="BBDD") $login['message']="Error, could not connect.";
					$info=$login;
				}
			}
		break;
		case 'login'://Para el client_python
			$sql="SELECT nameStudent, idStudent FROM students WHERE ";
			if($camp[1]!=null)
			{
				$constraints=explode("&",$camp[1]);
				$term=explode("=",$constraints[0]);
				if($term[0]=="student_id")
				{
					$sql=$sql."idCard=".$term[1]." LIMIT 1";
				}
			}
			$return = 0;
			$info=$mysql->executeQuery($sql, &$return , "SELECT", "students");
			if($return==1)
				{
					$login['state']=$info['state'];
					$login['name']=$info['data']['nameStudent'];
					$login['student_id']=$info['data']['idStudent'];
					$info=$login;				
				}else{
					$login['state']="Failed";
					if($info['state']=="SQL") $login['message']="Error, incorrect login.";
					if($info['state']=="BBDD") $login['message']="Error, could not connect.";
					$info=$login;
				}
			
		break;
		default://Consultas ya logueados
			//Preparació de la consulta que s'ha d'enviar
			//Preparar els camps que s'han de demanar
			//Primer camps sense l'identificador marcat amb 1
			$sql="SELECT camp FROM tablas_camps WHERE tabla='".$camp[0]."' AND identificador<>1 ORDER BY identificador DESC, ordre";
			$return = 0;
			$info=$mysql->executeQuery($sql, &$return , "SELECT");
			if($return==1)
			{
				$sql="SELECT ";
				$nFields=0;
				//$tables[0]=$camp[0];
				//$nTable=1;
				$nRows=0;
				while($nRows<$info['num_rows'])
				{
					$sqlFields[$nFields]=$info['data'][$nRows]['camp'];
					$nFields++;
					$nRows++;
				}
				$n=0;
				while($n<$nFields-1)
				{
					$sql=$sql.$sqlFields[$n].", ";
					$n++;
				}
				switch($camp[0])
				{
						case 'tasks': $sql=$sql.$sqlFields[$n]." FROM tasks_View";
						break;
						case 'timetables': $sql=$sql.$sqlFields[$n]." FROM timetables_View";
						break;
						default: $sql=$sql.$sqlFields[$n]." FROM ".$camp[0];
				}	
				
			}else{
				//Si no se encuentra la tabla se piden todos los campos
				$sql="SELECT * FROM ".$camp[0];
			}

			//Construimos las condiciones de la consulta
			//$sql="SELECT * FROM ".$camp[0];
			$hayCondition=0;
			if($camp[1]!=null)
			{
				$constraints=explode("&",$camp[1]);
				$n=0;
				foreach ($constraints as $constraint)
				{
					if($constraint != null) 
					{
						$term=explode("=",$constraint);
						if($term[0]=="LIMIT" or $term[0]=="limit" or $term[0]=="Limit")
						{
							$limitSql=" LIMIT ".$term[1];
						}else
						{
							$term[0]=str_replace("]","", $term[0]);
							$terms=explode("[",$term[0]);
							if($hayCondition==0)
							{
								$sql=$sql." WHERE ";
								$hayCondition=1;
							}else
							{
								$sql=$sql." AND ";
							}
							if($terms[1]!=null)
							{
								switch($terms[1])
								{
									case "lt": $sql=$sql.$terms[0]."<".$term[1];
									break;
									case "lte": $sql=$sql.$terms[0]."<=".$term[1];
									break;
									case "gt": $sql=$sql.$terms[0].">".$term[1];
									break;
									case "gte": $sql=$sql.$terms[0].">=".$term[1];
									break;
									default: $sql=$sql.$terms[0]."=".$term[1];
								}
							}else
							{
								$sql=$sql.$term[0]."=".$term[1];
								$hayCondition=1;
							}				
						}						
					}

	
				}
			}
			$sql=$sql.$limitSql;
			$return = 0;
			$info=$mysql->executeQuery($sql, &$return , "SELECT");
			if($return==1)
			{
				$ret['fields']=$info['fields'];
				$ret['state']=$info['state'];
				$ret['nameTable']=$camp[0];
				$nRows=0;
				while($nRows<$info['num_rows'])
				{
					$nCol=0;
					foreach($info['fields'] as $field)
					{
						$data[$nRows][$nCol]=$info['data'][$nRows][$field];
						$nCol++;
					}
					$nRows++;
				}
				$ret['data']=$data;
				$info=$ret;				
			}else{
				$ret['state']="Failed";
	//			print_r($info);
				if($info['state']=="SQL") $ret['message']="Error, No data send.";
				if($info['state']=="BBDD") $ret['message']="Error, could not connect.";
				$info=$ret;
			}
	}
	
} catch (Exception $e) {
    echo "Captured Throwable: " . $e->getMessage() . PHP_EOL;
}
echo json_encode($info);
?>