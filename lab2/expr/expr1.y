%{
/****************************************************************************
expr1.y
YACC file
Date: xxxx/xx/xx
xxxxx <xxxxx@nbjl.nankai.edu.cn>
****************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);
%}
%token NUMBER
%token ADD SUB MUL DIV ABS
%token LP RP
%token EOL
%left ADD SUB
%left MUL DIV
%right UMINUS

%%


lines 	: lines expr ';' { printf("%f\n> ", $2); }
		| lines ';'
		|
		; 		

expr 	: expr ADD expr { $$ = $1 + $3; }
		| expr SUB expr { $$ = $1 - $3; }
		| expr MUL expr { $$ = $1 * $3; }
 		| expr DIV expr { $$ = $1 / $3; }
 		| LP expr RP { $$ = $2; }
 		| SUB expr %prec UMINUS { $$ = -$2; }
		| NUMBER { $$ = $1; }
		;

%%

// programs section

int yylex()
{
	// place your token retrieving code here
	int t;
	while(t = getchar()){
		if(t==' '||t=='\t'||t=='\n'){

		}
		else if(isdigit(t)){
			yylval = 0;
			while(isdigit(t)){
				yylval = yylval * 10 + t - '0';
				t = getchar();
			}
			ungetc(t,stdin);
			return NUMBER;
		}
		else{
			switch(t){ 
      			case '+':
          			return ADD;
      			case '-':
          			return SUB;
       			case '*':
          			return MUL;
       			case '/':
          			return DIV;
          		case'(':
                    return LP;
                case')':
                    return RP;
      			default:
            		return t;
     		}
		}
	}
}

int main(void)
{
	yyin = stdin;
	do{
		printf("> ");
		yyparse();
	}while(!feof(yyin));
	return 0;
}
void yyerror(const char* s) {
	fprintf(stderr,"Parse error: %s\n",s);
	exit(1);
}
