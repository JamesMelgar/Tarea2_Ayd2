
/* Gramatica para primera pasada */

%lex
%%

[0-9]+("."[0-9]+)?  return 'DENTERO'
[true|false|1|0]  	return 'DBOOLEAN'
["'"."'"]			return 'DCARACTER'
["\""[^"\""]*"\""]			return 'DCADENA'
["//"(.)*]				{}
["/*"((^"*/")|"\"")*"*/"]		{}
"*"					return '*'
"/"					return '/'
"-"					return '-'
"+"					return '+'
"^"					return '^'
"++"				return "++"
"--"				return "--"
";"					return ";"
"+="				return "+="
"*="				return "*="
"-="				return "-="
"/="				return "/="
//relacionales
">"					return ">"
"<"					return "<"
">="				return ">="
"<="				return "<="
"!="				return "!="
//op logicos
"||"				return '||' //OR
"??"				return '??' //XOR
"&&"				return '&&' //AND
"NOT"				return '!' //NOT
//DECLARAR
"ENTERO"				return 'ENTERO'
"DECIMAL"				return 'DECIMAL'
"CARACTER"				return 'CARACTER'
"BOOLEANO"				return 'BOOLEANO'
"CADENA"				return 'CADENA'
"="				return '='
"["				return '['
"]"				return ']'
")"				return ')'
"("				return '('
"{"				return '{'
"}"				return '}'
","				return ','
"."				return '.'
//Palabras Reservadas
"tamanio"				return 'TAMANIO'
"concatenar"				return 'CONCATENAR'
"convertirAcadena"				return 'CONVERTIRACADENA'
"convertirAentero"				return 'CONVERTIRAENTERO'
"imprimir"				return 'IMPRIMIR'
"clase"				return 'CLASE'
"este"				return 'ESTE'
"publico"				return 'PUBLICO'
"protegido"				return 'PROTEGIDO'
"privado"				return 'PRIVADO'
"hereda_de"				return 'HEREDA_DE'
"importar"				return 'IMPORTAR'
"vacio"				return 'VACIO'
"retorno"				return 'RETORNAR'
"@Sobrescribir"				return 'SOBRESCRIBIR'
"principal"				return 'PRINCIPAL'
"nuevo"				return 'NUEVO'
"nada"				return 'NADA'
"romper"				return 'ROMPER'
"continuar"				return 'CONTINUAR'
"estructura"				return 'ESTRUCTURA'
"obtenerDireccion"				return 'OBTENERDIRECCION'
"crearPuntero"				return 'CREARPUNTERO'
"consultarTamanio"				return 'CONSULTARTAMANIO'
"reservarMemoria"				return 'RESERVARMEMORIA'
"destruirPuntero"				return 'DESTRUIRPUNTERO'
"lista"				return 'LISTA'
"INSERTAR"				return 'INSERTAR'
"OBTENER"				return 'OBTENER'
"buscar"				return 'BUSCAR'
"pila"				return 'PILA'
"apilar"				return 'APILAR'
"desapilar"				return 'DESAPILAR'
"cola"				return 'COLA'
"encolar"				return 'ENCOLAR'
"desencolar"				return 'DESENCOLAR'
"si"				return 'SI'
"Es_verdadero"				return 'ES_VERDADERO'
"Es_falso"				return 'ES_FALSO'
"Fin-si"				return 'fin-si'
"Evaluar_si"				return 'EVALUAR_SI'
"Es_igual_a"				return 'ES_IGUAL_A'
"defecto"				return 'DEFECTO'
"Repetir_Mientras"				return 'repetir_mientras'
"Hacer"				return 'HACER'
"mientras"				return 'MIENTRAS'
"Ciclo_doble_condicion"				return 'CICLO_DOBLE_CONDICION'
"repetir"				return 'REPETIR'
"hasta_que"				return 'HASTA_QUE'
"Repetir_contando"				return 'REPETIR_CONTANDO'
"Enciclar"				return 'ENCILAR'
"Contador"				return 'CONTADOR'
"Leer_Teclado"				return 'LEER_TECLADO'

<<EOF>>               return 'EOF'
[\t\r\f\n] {}
" " 							{}
.                              { alert("Error lexico en linea %d"+yytext); }

/lex

%left '+' '-'
%left '*' '/'
%left '^'

%start inicio

%% //inicio gramatica

inicio 
		: Simportar EOF
		;

//importar (“/ruta/archivo_importado.gcc”);

Simportar :  IMPORTAR '(' DCADENA ')' ';'  Simportar
			| Scuerpo ;

Scuerpo : ;

