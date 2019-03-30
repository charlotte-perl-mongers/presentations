#!/usr/bin/env perl

use v5.26;

my $verbose = 0;
my $force   = 0;
my $iters   = 0;

foreach my $opt( @ARGV ) {
    if( $opt =~ /^-h|--help$/ ) {
        say help();
        exit 0;
    } elsif( $opt =~ /^-f|--force$/ ) {
        $force = 1;
    } elsif( $opt =~ /^-v|--verbose$/ ) {
        $verbose = 1;
    } elsif( $opt =~ /^-i|--iters$/ ) {
        $iters = pop @ARGV;
        say "iters is not a decimal!" unless $iters =~ /^\d+$/;
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
    say "- Iters: $iters";

    return 0;
}

sub help  {
    return qq{
USAGE: 
    blort.pl [-h | --help] [-v | --verbose] [-f | --force] [-i | --iters #]

WHERE:
    -h / --help: this help
    -f / --force: force
    -v / --verbose: verbose 
    -i # / --iters #: number of iterations
    };
}
