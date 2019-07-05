#!/usr/bin/perl

use strict;

my $fn = $ARGV[0];

sub test {
    my $orig_fn = $_[0];
    printf "Got: %s\n", $orig_fn;
}


sub resize_one {
    my $orig_fn = $_[0];
    my $dir_name = "./";
    my $small_fn = "";
    if ($orig_fn =~ m/^(.*\/)(.*?)$/) {
        $dir_name = $1;
        $small_fn = $2;
    }
    else {
        $small_fn = $orig_fn;
    }

    $small_fn =~ s/(.*)\.[jpeg]+/$1_small.jpg/i;
    $small_fn =~ s/[^A-Za-z0-9\-_\.]+/_/g;
    # printf "%s %s\n", $dir_name, $small_fn;
    # return $dir_name, $small_fn;

    printf "dir_name: $dir_name small_fn: $small_fn\n";
    if ($orig_fn ne $small_fn) {
        my $cmd = "jpegtopnm < \"$orig_fn\" | pnmscale -xsize=1024 | pnmtojpeg > $dir_name$small_fn";
        printf "Running: %s\n", $cmd;
        `$cmd`;
        return 1;
    }
    else {
        printf "Error: fn eq small_fn (%s). Exiting.\n", $orig_fn;
        return 0;
    }
}


foreach $fn (@ARGV) {
    resize_one($fn);
    }

print "Now you might want to try:\nrm -i `ls | grep -v _small.jpg`\n";
