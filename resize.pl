#!/usr/bin/perl

use strict;

my $fn = $ARGV[0];
my $small_fn = $fn;
$small_fn =~ s/(.*)\.[jpeg]+/$1_small.jpg/i;
$small_fn =~ s/[^A-Za-z0-9\-_\.]+/_/g;
printf "small_fn: %s\n", $small_fn;
if ($fn ne $small_fn) {
    my $cmd = "jpegtopnm < \"$fn\" | pnmscale -xsize=1024 | pnmtojpeg > $small_fn";
    printf "Running: %s\n", $cmd;
    `$cmd`;
    exit 0;
}
else {
    printf "Error: fn eq small_fn (%s). Exiting.\n", $fn;
    exit 1;
}

