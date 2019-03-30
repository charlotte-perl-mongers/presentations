package Blort::Role::WithUsername;

use v5.26;
use MooseX::App::Role;
use feature 'signatures';
no warnings 'experimental::signatures';

option 'username' => (
    is            => 'rw',
    isa           => 'Str',
    required      => 1,
    documentation => q[Name of user to operate on],
    cmd_aliases   => [qw(u)], 
);

1;
