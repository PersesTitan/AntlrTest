grammar Calculator;

expression :
    expression op=(MUL | DIV) expression #mulDiv
    | expression op=(ADD | SUB) expression #addSub
    | number #num
    | '(' expression ')' #parens
;

number :
    NUMBER
;

MUL :
    'ㅇ*ㅇ'
;

DIV :
    'ㅇ/ㅇ'
;

ADD :
    'ㅇ+ㅇ'
;

SUB :
    'ㅇ-ㅇ'
;

NUMBER :
    'ㅇ-ㅇ'?[0-9]+('.'[0-9]+)?
;

WS :
	[ \t\r\n]+ -> skip
;