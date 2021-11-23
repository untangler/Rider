use v6;

class Animal {
  has $.name;
  has $.age;

  method eat {

  }
  method describe {
    say .name;
  }
}

my Animal $tiger .= new;

my regex $konijn = ...

/ a* /
