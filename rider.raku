use v6;
# rider.raku

use lib <lib>;
use RideGrammar;

multi MAIN(Str $recipeName) {
  my $recipe = "rides/$recipeName.ride".IO.slurp or die "could not read $recipeName.ride";
  my $match = RideGrammar.parse($recipe);
  $match or die "could not match";
  note "found match: ", $match.raku;

  my $html = 'minim.xhtml'.IO.slurp;
  $html ~~ s/ '####'  /H 40 V20 H40/;
  spurt 'out/first.xhtml', $html;
}
