/* Created by Victor Lopez <vhrlopes@gmail.com> (https://fulgur.io/) */
lexer grammar AdvplCommonLexerRules;

fragment A  : ('a'|'A') ;
fragment B  : ('b'|'B') ;
fragment C  : ('c'|'C') ;
fragment D  : ('d'|'D') ;
fragment E  : ('e'|'E') ;
fragment F  : ('f'|'F') ;
fragment G  : ('g'|'G') ;
fragment H  : ('h'|'H') ;
fragment I  : ('i'|'I') ;
fragment J  : ('j'|'J') ;
fragment K  : ('k'|'K') ;
fragment L  : ('l'|'L') ;
fragment M  : ('m'|'M') ;
fragment N  : ('n'|'N') ;
fragment O  : ('o'|'O') ;
fragment P  : ('p'|'P') ;
fragment Q  : ('q'|'Q') ;
fragment R  : ('r'|'R') ;
fragment S  : ('s'|'S') ;
fragment T  : ('t'|'T') ;
fragment U  : ('u'|'U') ;
fragment V  : ('v'|'V') ;
fragment W  : ('w'|'W') ;
fragment X  : ('x'|'X') ;
fragment Y  : ('y'|'Y') ;
fragment Z  : ('z'|'Z') ;
fragment SS : '\'' (  ~('\''|'\n') )* '\'' ;
fragment DS : '"' ( ~('"'|'\n') )* '"'? ;

CONST       : (NUMERIC|STRING|BOOLEAN|NULL) ;

NUMERIC     : '-'? [0-9]+ ('.' [0-9]+)? ;
STRING      : SS | DS ;
BOOLEAN     : '.' (T|F) '.' ;
NULL        : N I L ;
PREPROC     : '#' ID ;
NEWLINE     : '\r'? '\n' ;
WS          : [ \t]+ -> skip ;

OP_ATTRIB   : ':=' ;

STATIC      : S T A T I C ;

ID          : [a-zA-Z_0-9]+ ;