#!/usr/bin/env perl

{
    package HelloWorld;

    use Moo; 
    use CLI::Osprey;
     
    option 'message' => (
        is      => 'ro',
        format  => 's',
        doc     => 'The message to display',
        default => 'Hello, world!',
    );
     
    sub run {
        my( $self ) = @_;
        print $self->message, "\n";
    }
}

use HelloWorld;
HelloWorld->new_with_options->run;
