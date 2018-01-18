/* Created by Victor Lopez <vhrlopes@gmail.com> (https://fulgur.io/) */
grammar AdvplExpr;
import AdvplCommonLexerRules;

@header {package io.fulgur.advpl.advpl_lexis.antlr;}

prog            :   (preproc)* ;

preproc         :   (onlypreproc|singlepreproc|doublepreproc) (NEWLINE|EOF) ;
onlypreproc     :   PREPROC ;
singlepreproc   :   PREPROC CONST ;
doublepreproc   :   PREPROC ID CONST ;
