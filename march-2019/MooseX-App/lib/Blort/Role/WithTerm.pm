package Blort::Role::WithTerm;

use v5.26;
use MooseX::App::Role;
use Term::UI;
use Term::ReadLine;
use feature 'signatures';
no warnings 'experimental::signatures';

has term => (
    is      => 'rw',
    isa     => 'Term::ReadLine::Stub',
    lazy    => 1,
    default => sub ( $self ) {
        return Term::ReadLine->new( 'Blort' );
    },
);

1;
