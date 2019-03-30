package Blort;

use v5.26;
use MooseX::App qw( Color Term );
with qw(
    Blort::Role::WithDebug
    Blort::Role::WithVerbose
    Blort::Role::WithTerm
);
use feature 'signatures';
no warnings 'experimental::signatures';

option target => (
    is            => 'ro',
    isa           => 'Str',
    lazy          => 1,
    default       => 'test',
    documentation => 'Target environment',
);

# NOTE TO SELF: cmd_env specifies an env var that can be set instead of a parameter

# Display a message in verbose mode
sub _say( $self, $message ) {
    return unless $self->verbose;
    say $message;
}

# Display a message in debug mode
sub _say_debug ( $self, $message ) {
    return unless $self->debug;
    say $message;
}

# Translate package name from camel case into hyphenated name
app_command_name {
    my @parts = split( /[_\s]+|\b|(?<![A-Z])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])/, shift );
    return lc(join('-',@parts));
};

app_namespace 'Blort::Commands';

sub BUILD {
    my $self = shift;
    $self->_say_debug( "Using Target: " . $self->target );
}

1;
