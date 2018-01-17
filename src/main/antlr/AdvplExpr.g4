/* Created by Victor Lopez <vhrlopes@gmail.com> (https://fulgur.io/) */
grammar AdvplExpr;
import AdvplCommonLexerRules;

prog            :   (preproc|NEWLINE)* ;

preproc         :   (onlypreproc|singlepreproc|doublepreproc|srcstaticvar) ;
onlypreproc     :   PREPROC (NEWLINE|EOF) ;
singlepreproc   :   PREPROC (NUMERIC|STRING|BOOLEAN|NULL|IDENTIFIER) (NEWLINE|EOF) ;
doublepreproc   :   PREPROC IDENTIFIER (NUMERIC|STRING|BOOLEAN|NULL|IDENTIFIER) (NEWLINE|EOF) ;
srcstaticvar    :   STATIC IDENTIFIER (OP_ATTRIB (NUMERIC|STRING|BOOLEAN|NULL|IDENTIFIER))? (NEWLINE|EOF) ;
