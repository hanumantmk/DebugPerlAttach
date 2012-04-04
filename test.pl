#!/usr/bin/perl -w

use strict;

sub foo {
  bar(@_);
}

sub bar {
  baz(@_);
}

sub baz {
  sleep $_[0];
}

system("echo $$ > pid");

print "$$\n";

while (1) {
  foo(1);
}
