package UserMaint::Role::WithVerbose;

use v5.32;
use Moo::Role;
use CLI::Osprey;

option verbose => (
    is    => 'ro',
    short => 'v',
    doc   => 'show verbose output',
);

1;

