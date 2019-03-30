package Blort::Role::WithSlugArg;

use v5.26;
use MooseX::App::Role;
use feature 'signatures';
no warnings 'experimental::signatures';

parameter 'slug' => (
    is       => 'rw',
    isa      => 'Str',
    required => 1,
);

1;
