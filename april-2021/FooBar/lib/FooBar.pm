package FooBar;
use v5.32;
use Moo;
use CLI::Osprey;
 
option verbose => (
    is    => 'ro',
    short => 'v',
    doc   => 'Show all the FooBar-ing!',
);
 
subcommand foo => sub {
    my $self = shift;
    say "Foo you!";
    say "No, really, I insist, go Foo yourself!"
        if $self->verbose;
};

subcommand bar => 'FooBar::Bar';
 
sub run {
    my $self = shift;
    return $self->osprey_usage;
}

1;
