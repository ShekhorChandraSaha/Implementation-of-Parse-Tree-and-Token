grammar ggg ;

root : declaration declarative function ;

declaration : '!' declarationlist '('declarationtype ')'  ;

declarationlist : 'include' | 'define' ;

declarationtype : 'iostream' | 'stdio.h' | 'conio.h' | 'math.h' | 'string.h' | term '.' term ;

declarative : 'using namespace std ;' ;

function : 'int' ID '[' ']' block ;

block : '{' statement '}' ;

statement :(
  expression_statement
 | selection_statement
 | iteration_statement
 | return_statement
 | compound_statement
 | output_statement
 | break_statement
 )+
 ;
 expression_statement : typeSpecifier expr ';' | ';' ;
return_statement : 'back' expr ';' | 'back' term ';' ;
expr :   expr binop expr | '(' expr ')' | term ;
binop : 'plus' | 'minus' | 'multiply' | 'divide' | relop ;
relop : 'equal to' | 'not equal' | 'greater than equal' | 'less than' | 'greater than' | 'less than equal' | '=' | logical_op ;
logical_op : 'AND' | 'OR' ;
selection_statement : 'if' '[' expr ']' block | 'if' '[' expr ']' block 'if other' block ;
compound_statement : '{' expr '}' ;
break_statement : 'break' ;
iteration_statement : conditional_statement | loop_statement ;
conditional_statement : 'condition' '[' expr ']' block ;
loop_statement : 'repeat''['loopexpr']' block ;
loopexpr : var '='term '/' var relop term '/' var incr_op ;
output_statement : 'printout' '<<' expr ';' ;

var : ID ;
incr_op : '++'| '--' ;
term : ID | LIT ;

typeSpecifier : 'integer' | 'boolean' | 'character' ;


ID : [a-zA-Z]+ ;
LIT : [0-9]+ ;

WS : [ \t\r\n]+ -> skip ;
