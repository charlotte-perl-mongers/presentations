package FooBar::Bar;
use v5.32;
use Moo;
use CLI::Osprey
    desc => 'Put the Bar in FooBar';
 
option how => (
    is         => 'ro',
    short      => 'o', # TODO: discuss this!
    doc        => 'How the bar is put in FooBar',
    format     => 's',
    format_doc => 'what how is',
    required   => 1,
);
 
sub run {
    my $self = shift;

    if( $self->parent_command->verbose ) {
        say "PREPARE TO BE FOOBAR-ED!";
    }

    say "When I say put the Bar in FooBar, here's how: " .
        $self->how;
}

1;
