#!/usr/bin/perl
use strict;
use warnings;

sub main {

opendir (DIR,".") or die "Failed to open the present working directory.";

while (my $file = readdir(DIR)) {

$file =~ m/(^.+)\.(.+$)/;
if ($2 eq "mp4" or "mpeg" or "avi" or "flv") {
system("ffmpeg","-i $1.$2","-vn $1.mp3");
}
}

closedir(DIR);

}

&main;
exit;
