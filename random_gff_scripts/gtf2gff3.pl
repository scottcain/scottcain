#!/usr/bin/perl
use strict;
use warnings;


my $FILEIN = $ARGV[0];
my $FILEOUT = "$FILEIN.gff3";

open my $fh, "<", $FILEIN or die "couldn't open $FILEIN: $!";
open my $OUT, ">", $FILEOUT or die "couldn't open $FILEOUT: $!";

print $OUT "##gff-version 3\n";
while (<$fh>) {
    if (/^#/) {
         print $OUT $_;
         next;
    }
    chomp;

    my @la = split(/\t/);
    (warn $_ && next) unless scalar @la == 9;
    next if $la[2] eq 'start_codon';
    next if $la[2] eq 'stop_codon';
    next if $la[2] eq 'Selenocysteine';

    my @atts = split(/\s*;\s*/,$la[8]);
    #warn @atts;
    my @gff3_atts;
    for my $att (@atts) {
        my @pair;
        if ($att =~ /\s*(\S+)\s*\"(\S+)\"/) {
            $pair[0] = $1;
	    $pair[1] = $2;
	}
	#my @pair = split($att, /\s\"/);
	#$pair[1] =~ s/\"//;
#warn $pair[0];
	#warn $pair[1];
	next unless ($pair[0] && defined $pair[1]);

	if ($pair[0] eq 'gene_id') {
            if ($la[2] eq 'gene') {
                $pair[0]='ID';
            } elsif ($la[2] eq 'transcript' or $la[2] eq 'mRNA') {
                $pair[0]='Parent';
            } else {
                next;
            }
        }
        elsif ($pair[0] eq 'gene_name') {
            if ($la[2] eq 'gene') {
                $pair[0]='Name';
            } else {
                next;
            }
        }
        elsif ($pair[0] eq 'gene_source'
            or $pair[0] eq 'transcript_source'
            or $pair[0] eq 'exon_number'
            or $pair[0] eq 'exon_id'
            or $pair[0] eq 'exon_version') {
            next;
        }
        elsif ($pair[0] eq 'gene_biotype') {
            if ($la[2] eq 'gene') {
                $pair[0]='biotype';
            } else {
                next;
	    }
        }
        elsif ($pair[0] eq 'transcript_biotype') {
            if ($pair[1] eq 'protein_coding' && $la[2] eq 'transcript') {
                $la[2]='mRNA';
                $pair[0]='biotype';
            } else {
                next;
            }
        }
        elsif ($pair[0] eq 'transcript_name') {
            if ($la[2] eq 'transcript' or $la[2] eq 'mRNA') {
                $pair[0]='Name';
            } else {
                next;
            }
        }
        elsif ($pair[0] eq 'transcript_id') {
            if ($la[2] eq 'transcript' or $la[2] eq 'mRNA') {
                $pair[0]='ID';
            } else {
                $pair[0]='Parent';
            }
        }
	#warn 'after ifing'.$pair[0].$pair[1];
        push @gff3_atts, join('=', @pair);
    }
    #warn @gff3_atts;
    $la[8] = join(';',@gff3_atts);
    print $OUT join("\t",@la), "\n";
}

close $fh;
close $OUT;
