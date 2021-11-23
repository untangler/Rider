class RideActions($/) {
  method TOP($/) { make [~] $<Decl>».made ~ $<Appl>.made }
  method Decl($/) { <Name> '=' <Block> }
  method Appl($/) { <Expr> + }
  method Block($/) { '(' <Expr> * ')' }
  method Expr($/) { <Move> | <Rot> | <Mult> | <Sym> | <Block> }
  method Move($/) { 'M' <Num> }
  method Rot($/) { 'R' <Num> }
  method Mult($/) { 'X' <Num> <Expr> }
  method Sym($/) { <Name> }
  method Name($/) { <:Ll> + }
  method Num($/) { <[+-]> ? \d + }
}
