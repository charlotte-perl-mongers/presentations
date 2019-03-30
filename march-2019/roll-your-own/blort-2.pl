#!/usr/bin/env perl

use v5.26;

my $verbose = 0;
my $force   = 0;

foreach my $opt( @ARGV ) {
    if( $opt eq "-h" or $opt eq "--help" ) {
        say help();
        exit 0;
    } elsif( $opt =~ /^-f|--force$/ ) {
        $force = 1;
    } elsif( $opt =~ /^-v|--verbose$/ ) {
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
    blort.pl [-h | --help] [-v | --verbose] [-f | --force]

WHERE:
    -h / --help: this help
    -f / --force: force
    -v / --verbose: verbose 
    };
}
