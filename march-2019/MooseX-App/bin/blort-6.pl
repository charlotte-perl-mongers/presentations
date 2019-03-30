#!/usr/bin/env perl

use lib './lib';
use v5.26;
use Blort;

Blort->new_with_command->run;

#GetOptions(
    #'v|verbose' => \my $verbose, # declare var inline
    #'f|force'   => \my $force,
    #'i|iters=i' => \my $iters,
    #'d|devs=s'  => \my @devs,    # no default value!
    #'h|help'    => sub{ pod2usage(1); },
#) or pod2usage(2);
