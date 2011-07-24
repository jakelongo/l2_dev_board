#!/usr/bin/perl -w

use strict;
use warnings;

my %match;

#Strip these Sections
$match{'\$PAD'} = '\$EndPAD';
$match{'\$CZONE_OUTLINE'} = '\$EndCZONE_OUTLINE';
$match{'\$ZONE'} = '\$EndZONE';
$match{'\$COTATION'} = '\$EndCOTATION';
$match{'\$TEXTPCB'} = '\$EndTEXTPCB';
$match{'\$TRACK'} = '\$EndTRACK';
$match{'\$SHAPE3D'} = '\$EndSHAPE3D';

sub main
{
    open(FILE, "< $ARGV[0]");
    my @lines = <FILE>;
    close(FILE);

    my $delete = 0;
    my $restart = "";
    my $currentAngle = "";
    my $gobbling = 0;
    my $gobble = "";

    #open(FILE, "> $ARGV[0]strip.brd");
    open(FILE, "> assembly.brd");
    foreach my $line (@lines)
    {
        $line =~ s/(\r|\n)//g;

	# Remove comments and drawings
	if ($gobbling)
	{
	    	if ($line =~ /^De 24/)
		{
			$delete = 1;
			$gobbling = 0;
			$restart = '\$EndDRAWSEGMENT';
		}
	    	elsif ($line =~ /^De 25/)
		{
			$delete = 1;
			$gobbling = 0;
			$restart = '\$EndDRAWSEGMENT';
		}
		elsif ($line =~ /^De /)
		{
			print FILE "$gobble\n";
			$gobbling = 0;
		}
		else 
		{
			$gobble = $gobble . "\n" . $line;
			next;
		}
	}
        
	if (!$delete) {
	    foreach my $key (keys %match) {           
                if ($line =~ /${key}/) {
                    $delete = 1;
		    $restart = ${match{$key}};
                } 
            }
	    
	    	if ($line =~ /^\$DRAWSEGMENT/)
		{
			$gobble = $line;
			$gobbling = 1;
			next;
		}
        }

        if ($delete)
	{
		if ($line =~ /$restart/) 
		{
			$delete = 0;
		}
        }
	elsif ($line =~ /^T1.*/)
	{
	}
	else
	{
		# Extract the component angle
		if ($line =~ /^Po [^ ]+ [^ ]+ ([^ ]+) .*/)
		{
			$currentAngle = $1;
		}

		if ($line =~ /^T0.*(N\".*\")/)
		{
			#$line = "T0 0 0 394 394 0 79 N V 21 $1";
			$line = "T0 0 0 300 300 $currentAngle 39 N V 21 $1";
		}
		print FILE "$line\n";
        }
    }        
    close(FILE);
}

main;
