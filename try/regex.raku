use v6;

my $str = 'aaaaa';

my $match = $str ~~ / (a*) . /;

say $match[0];
