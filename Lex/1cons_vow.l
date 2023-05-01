%{
  #include <stdio.h>
  int consonants = 0, vowels = 0;
%}

%% 
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%

int yywrap()
{
  return 1;
}

int main()
{
  printf("Enter the string: ");
  yylex();
  printf("Vowels: %d, Consonants: %d\n", vowels, consonants);
  return 0;
}

// lex filename.l
// gcc lex.yy.c
// ./a.out
// ctrl + D
