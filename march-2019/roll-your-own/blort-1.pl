#!/usr/bin/env perl

use v5.26;

my $verbose = 0;
my $force   = 0;

foreach my $opt( @ARGV ) {
    if( $opt eq "-h" ) {
        say help();
        exit 0;
    } elsif( $opt eq "-f" ) {
        $force = 1;
    } elsif( $opt eq "-v" ) {
        $verbose = 1;
    } else {
        say "Invalid option: $opt";
        exit 1;
    }
}

exit blort();

sub blort {
    say "blorting with the following options:";
    say "- Force: $force";
    say "- Verbose: $verbose";

    return 0;
}

sub help  {
    return qq{
USAGE: 
    blort.pl [-h] [-v] [-f]

WHERE:
    -h: this help
    -f: force
    -v: verbose 
    };
}
