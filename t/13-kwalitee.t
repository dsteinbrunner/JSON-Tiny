#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;

# To enable this suite one must set $ENV{RELEASE_TESTING} to a true value.
# This prevents author tests from running on a user install.

if ( $ENV{RELEASE_TESTING} ) {
  eval { require Test::Kwalitee; Test::Kwalitee->import() }; ## no critic (eval)
  plan( skip_all => 'Test::Kwalitee not installed; skipping' ) if $@;

  # Clean up.  I haven't traced out where this is getting created, but we don't
  # need to leave it behind as clutter.
  unlink 'Debian_CPANTS.txt' if -e 'Debian_CPANTS.txt';
}
else {
  my $msg = 'Author Test: Set $ENV{RELEASE_TESTING} to a true value to run.';
  plan( skip_all => $msg );
}
