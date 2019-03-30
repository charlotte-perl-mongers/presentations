package Blort::Role::WithVerbose;

use v5.26;
use MooseX::App::Role;
use feature 'signatures';
no warnings 'experimental::signatures';

option 'verbose' => (
    is            => 'rw',
    isa           => 'Bool',
    required      => 0,
    documentation => 'Enable verbose output. Set to 1 to enable. Off by default.',
    cmd_aliases   => [qw(v)], 
);

1;
