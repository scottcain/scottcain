#!/usr/bin/perl
use strict;
use warnings;

# execute like this: 
#   perl  missingpaf_2_bed.pl paf.sorted > gaps.bed

# sort the paf file first with:
#
#    sort -k 1,1 -k 3,3n in.paf > paf.sorted
#

# of course this only gets gaps "one way". If we wanted to sort and gap by the second assembly,
# we'd sort like this:
#
#    sort -k 6,6 -k 8,8n in.paf > paf.sorted
#
# and swap the array indexes below like this:
#    $la[0]  -> $la[5]
#    $la[2]  -> $la[7]
#    $la[3]  -> $la[8]

# This script ignores the mismatches at the beginnings and ends of contigs

my $current_contig = '';
my $next_interval = 0;

while(<>) {
  my @la = split /\t/;
  if ($la[0] ne $current_contig) {
      $next_interval = 0;
      $current_contig = $la[0];
  }

  my $start = $la[2];
  my $end   = $la[3];

  if ($start > $next_interval + 1) {
      # there is a gap before this line
      print "$current_contig\t$next_interval\t$start\n" unless $next_interval == 0;
  }
  $next_interval = $end;
}
