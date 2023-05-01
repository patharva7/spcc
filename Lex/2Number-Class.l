%{
#include<stdio.h>
int pos_num=0, pos_frac=0;
int neg_num=0, neg_frac=0;
%}

%%
[+]?[0-9]* {pos_num ++;}
[+]?[0-9]*\.[0-9]+{pos_frac ++;}
[-][0-9]*{neg_num++;}
[-][0-9]*\.[0-9]+[neg_frac++;]
%%
int yywrap(){
    return 1;
}
int main() {
    printf("Enter the number : ");
    yylex();
    printf('Positive Num : %d, Positive frac : %d\n', pos_num, pos_frac);
    printf('Negative Num : %d, Negative frac : %d\n', neg_num, neg_frac);
    return 0;
}