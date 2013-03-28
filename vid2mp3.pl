#!/usr/bin/perl
use strict;
use warnings;

sub main {

opendir (DIR, .) or die "Failed to open the present working directory.";

while (my $file = readdir(DIR)) {

$file =~ m/(^.+)\.(.+$)/
system("ffmpeg","-i","$1.$2","-vn","$1.mp3");

}

closedir(DIR);

}

&main;
exit;
