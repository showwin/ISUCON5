#!/usr/bin/perl
# This is automatically generated by author/import-moose-test.pl.
# DO NOT EDIT THIS FILE. ANY CHANGES WILL BE LOST!!!
use t::lib::MooseCompat;

use strict;
use warnings;

use Test::More;
use Test::Exception;

BEGIN {
    use_ok('Mouse::Util::TypeConstraints');
}

{
    package Some::Class;
    use Mouse::Util::TypeConstraints;

    subtype 'MySubType' => as 'Int' => where { 1 };
}

throws_ok {
    package Some::Other::Class;
    use Mouse::Util::TypeConstraints;

    subtype 'MySubType' => as 'Int' => where { 1 };
} qr/cannot be created again/, 'Trying to create same type twice throws';

done_testing;
