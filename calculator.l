/* lexical grammar */
%%

\s+                   /* skip whitespace */
[0-9]+("."[0-9]+)?\b  return 'NUMBER'
"*"                   return '*'
"/"                   return '/'
"-"                   return '-'
"+"                   return '+'
"^"                   return '^'
"!"                   return '!'
"%"                   return '%'
"("                   return '('
")"                   return ')'
"="					  return '='
"PI"                  return 'PI'
"E"                   return 'E'
[a-zA-z]\w*           return 'ID'	/* Debemos ponerlo debajo de PI y E para que cuando pongas PI o E te duelva eso y no ID */
<<EOF>>               return 'EOF'
.                     return 'INVALID'

