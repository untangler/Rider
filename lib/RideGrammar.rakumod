# use Grammar::ParseError;

grammar RideGrammar {
  token TOP { ^ <Decl>* %% ',' <Appl> $ }
  token Decl { <Name> '=' <Block> }
  token Appl { <Expr> + }
  token Block { '(' <Expr> * ')' }
  token Expr { <Move> | <Rot> | <Mult> | <Sym> | <Block> }
  token Move { 'M' <Num> }
  token Rot { 'R' <Num> }
  token Mult { 'X' <Num> <Expr> }
  token Sym { <Name> }
  token Name { <:Ll> + }
  token Num { <[+-]> ? \d + }
}
