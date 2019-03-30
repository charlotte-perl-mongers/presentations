package Blort::Role::WithDebug;

use v5.26;
use MooseX::App::Role;
use feature 'signatures';
no warnings 'experimental::signatures';

option 'debug' => (
    is            => 'rw',
    isa           => 'Bool',
    required      => 0,
    documentation => 'Debugging mode. Set to 1 to enable. Off by default.',
    cmd_aliases   => [qw(d)], 
);

1;

