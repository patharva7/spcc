%{
#include<stdio.h>
int char=0, word=0, newLine=0, space=0;
%}

%%
[a-zA-Z]{1} {char ++;}
[a-zA-Z]{2,} {word ++;}
[\n] {newLine++;}
[] {space++;}

%%
int yywrap(){
    return 1;
}
int main() {
    printf("Enter the string : ");
    yylex();
    printf('Char : %d, Spaces : %d, Words : %d, New Line : %d', char, space, word, newLine);
    return 0;
}