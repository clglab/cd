%{
#include<stdio.h>
%}
keyword[auto|break|char|continue|double|do|else|extern|exit|for|float|goto|if|int|return|switch|while|short|signed|unsigned|sizeOf|
typedef|long|struct|case|enum|register|union|const|volatile|static|void]
letter[a-zA-Z]
digit[0-9]
special[~,@,#,$,%,^,&,*,(,),+,=,{,},;,:,',",/,.,,,?,<,`]
%%
{keyword} {printf("%s is a keyword",yytext);}
{keyword}({letter}|{digit}|{special})*  {printf("%s is an identifier",yytext);}
{special}({letter}|{digit}|{special}|{keyword})*  {printf("%s is not a keyword",yytext);}
{digit}({letter}|{digit}|{special}|{keyword})*  {printf("%s is not a keyword",yytext);}
{letter}({letter}|{digit}|{special}|{keyword})*  {printf("%s is not a keyword",yytext);}
%%
main()
{
yylex();
}



