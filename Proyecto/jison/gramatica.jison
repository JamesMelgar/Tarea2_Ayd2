%lex
%%

parser.lexer = {
	lex: function () { 
		return 'NIL'; 
	}, 
	setInput: function (str) {} 
};

[0-9]+ print(yytext); 