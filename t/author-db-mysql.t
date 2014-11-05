#!perl

BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}


use 5.010;
use strict;
use warnings;

use Test::More 0.98;
use Test::WithDB;

my $twdb = Test::WithDB->new(config_profile=>'twdb-test-mysql');
my $dbh = $twdb->create_db;
ok($dbh);
undef $twdb;

DONE_TESTING:
done_testing;
