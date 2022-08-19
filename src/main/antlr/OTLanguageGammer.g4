grammar OTLanguageGammer;

boolCalculator
    :   NOT FALSE
    ;

// 일반 변수
INT : 'ㅇㅈㅇ';
LONG : 'ㅇㅉㅇ';
BOOLEAN : 'ㅇㅂㅇ';
STRING : 'ㅇㅁㅇ';
CHARACTER : 'ㅇㄱㅇ';
FLOAT : 'ㅇㅅㅇ';
DOUBLE : 'ㅇㅆㅇ';
// 블린 정의
TRUE : 'ㅇㅇ';
FALSE : 'ㄴㄴ';
OR : 'ㄸ';
AND : 'ㄲ';
NOT : 'ㅇㄴ';

Identifier
	:	OTLLetter OTLLetterOrDigit*
	;

fragment
OTLLetter
	:	[a-zA-Z$_]
	|
		~[\u0000-\u007F\uD800-\uDBFF]
		{Character.isJavaIdentifierStart(_input.LA(-1))}?
	|
		[\uD800-\uDBFF] [\uDC00-\uDFFF]
		{Character.isJavaIdentifierStart(Character.toCodePoint((char)_input.LA(-2), (char)_input.LA(-1)))}?
	;

fragment
OTLLetterOrDigit
	:	[a-zA-Z0-9$_]
	|
		~[\u0000-\u007F\uD800-\uDBFF]
		{Character.isJavaIdentifierPart(_input.LA(-1))}?
	|
		[\uD800-\uDBFF] [\uDC00-\uDFFF]
		{Character.isJavaIdentifierPart(Character.toCodePoint((char)_input.LA(-2), (char)_input.LA(-1)))}?
	;

WS  :  [ \t\r\n\u000C]+ -> channel(HIDDEN)
    ;