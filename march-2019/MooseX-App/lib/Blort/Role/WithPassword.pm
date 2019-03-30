package Blort::Role::WithPassword;

use v5.26;
use MooseX::App::Role;
use feature 'signatures';
no warnings 'experimental::signatures';

option 'password' => (
    is            => 'rw',
    isa           => 'Str',
    required      => 1,
    documentation => 'Password for the new user',
    cmd_aliases   => [qw(p)], 
);

1;
