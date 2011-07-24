#!/usr/bin/perl -w

use strict;
use warnings;

sub main {

	# CAPS
	open(FILE, "< capacitors.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_capacitors.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;
		$bits[5] =~ s/\"//g;
		$bits[6] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[3]-$bits[6]V-$bits[5]-$bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[3]-$bits[6]V-$bits[5]-$bits[4] C 0 0 N Y 1 F N\n";
		print FILE "F0 \"C\" -50 -250 50 V V C CNN\n";
		print FILE "F1 \"$bits[3]-$bits[6]V-$bits[5]-$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[4]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[10] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[8] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[9] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		print FILE "F8 \"$bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[11]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";

		if ( $bits[4]  eq "\"0402\"" )
		{
			print FILE " X-0402\n";
		}
		elsif ( $bits[4]  eq "\"0603\"" )
		{
			print FILE " X-0603\n";
		}
		elsif ( $bits[4] eq "\"0805\"" )
		{
			print FILE " X-0805\n";
		}
		elsif ( $bits[4] eq "\"AL_ELEC_SMD_B\"" )
		{
			print FILE " X-SMTCAP-CASE-B\n";
		}
		elsif ( $bits[4] eq "\"AL_ELEC_SMD_D\"" )
		{
			print FILE " X-SMTCAP-CASE-D\n";
		}

		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		if ( $bits[2]  eq "\"discretes:cap_p\"" )
		{
			print FILE "P 4 0 1 15  -100 50  100 50  50 50  50 50 N\n";
			print FILE "A 0 -200 180 563 1236 0 1 15 N 100 -50 -100 -50\n";
			print FILE "T 0 -50 100 80 0 0 0 +  Normal 0\n";
			print FILE "X ~ 1 0 200 150 D 40 40 1 1 P\n";
			print FILE "X ~ 2 0 -200 180 U 40 40 1 1 P\n";
		}
		else
		{
			print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
			print FILE "P 2 0 1 10  -100 30  100 30 N\n";
			print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
			print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";
		}

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);


	# RESISTORS
	open(FILE, "< resistors.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_resistors.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[3]\n";
		print FILE "#\n";
		print FILE "DEF $bits[3] R 0 0 N Y 1 F N\n";
		print FILE "F0 \"R\" 80 0 50 V V C CNN\n";
		print FILE "F1 \"$bits[3]\" 0 0 50 V V C CNN\n";
		print FILE "F2 $bits[5] 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[10] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[8] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[9] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		print FILE "F8 \"$bits[4]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		print FILE "F10 \"$bits[7]\" 650 0 60 V I C CNN \"Max Power\"\n";
		print FILE "F11 \"$bits[11]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";
		print FILE "\$FPLIST\n";
		print FILE " X-0603\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";
		print FILE "S -40 150 40 -150 0 1 8 N\n";
		print FILE "X ~ 1 0 250 100 D 60 60 1 1 P\n";
		print FILE "X ~ 2 0 -250 100 U 60 60 1 1 P\n";
		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);


	# ICS
	open(FILE, "< ics.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_ics.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[4] C 0 0 N Y 1 F N\n";
		print FILE "F0 \"U\" -50 -250 50 V V C CNN\n";
		print FILE "F1 \"$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[3]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[7] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[5] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[6] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		#print FILE "F8 $bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		#print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		#print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[8]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";
		print FILE " X-$bits[3]\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
		print FILE "P 2 0 1 10  -100 30  100 30 N\n";
		print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
		print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);


	# CONNECTORS
	open(FILE, "< connectors.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_ics.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[4] C 0 0 N Y 1 F N\n";
		print FILE "F0 \"J\" -50 -250 50 V V C CNN\n";
		print FILE "F1 \"$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[3]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[7] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[5] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[6] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		#print FILE "F8 $bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		#print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		#print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[8]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";
		print FILE " X-$bits[3]\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
		print FILE "P 2 0 1 10  -100 30  100 30 N\n";
		print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
		print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);

	# CONNECTORS
	open(FILE, "< connectors.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_connectors.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$lines = $lines +1;

		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[4] C 0 0 N Y 1 F N\n";
		print FILE "F0 \"J\" -50 -250 50 V V C CNN\n";
		print FILE "F1 \"$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[3]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[7] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[5] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[6] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		#print FILE "F8 $bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		#print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		#print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[8]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";
		print FILE " X-$bits[3]\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
		print FILE "P 2 0 1 10  -100 30  100 30 N\n";
		print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
		print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);


	# DIODES
	open(FILE, "< diodes.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_diodes.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$lines = $lines +1;

		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[4] C 0 0 N Y 1 F N\n";
		print FILE "F0 \"D\" -50 -250 50 V V C CNN\n";
		print FILE "F1 \"$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[3]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[7] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[5] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[6] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		#print FILE "F8 $bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		#print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		#print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[8]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";
		print FILE " X-$bits[3]\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
		print FILE "P 2 0 1 10  -100 30  100 30 N\n";
		print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
		print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);


	# XTALS
	open(FILE, "< xtals.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_xtals.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$lines = $lines +1;

		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[4] C 0 0 N Y 1 F N\n";
		print FILE "F0 \"X\" -50 -250 50 V V C CNN\n";
		print FILE "F1 \"$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[3]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[7] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[5] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[6] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		#print FILE "F8 $bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		#print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		#print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[8]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";
		print FILE " X-$bits[3]\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
		print FILE "P 2 0 1 10  -100 30  100 30 N\n";
		print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
		print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);


	# FUSES
	open(FILE, "< fuses.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_fuses.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$lines = $lines +1;

		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[4] C 0 0 N Y 1 F N\n";
		print FILE "F0 \"X\" -50 -250 50 V V C CNN\n";
		print FILE "F1 \"$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[3]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[7] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[5] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[6] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		#print FILE "F8 $bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		#print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		#print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[8]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";
		print FILE " X-$bits[3]\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
		print FILE "P 2 0 1 10  -100 30  100 30 N\n";
		print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
		print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);


	# MAGNETICS
	open(FILE, "< magnetics.csv");
	my @lines = <FILE>;
	close(FILE);

	open(FILE, "> xmos_magnetics.lib");
	print FILE "EESchema-LIBRARY Version 2.3  Date: Wed 02 Sep 2009 13:43:22 BST\n";

	foreach my $line (@lines)
	{
		$lines = $lines +1;

		$line =~ s/(\r|\n)//g;
	
		my @bits = split( "\t", $line );

		$bits[3] =~ s/\"//g;
		$bits[4] =~ s/\"//g;

		print FILE "#\n";
		print FILE "# $bits[4]\n";
		print FILE "#\n";
		print FILE "DEF $bits[4] C 0 0 N Y 1 F N\n";

		if ( $bits[2]  eq "\"discretes:ferrite\"" )
		{
			print FILE "F0 \"FB\" -50 -250 50 V V C CNN\n";
		}
		else
		{
			print FILE "F0 \"I\" -50 -250 50 V V C CNN\n";
		}

		print FILE "F1 \"$bits[4]\" -150 0 50 V V C CNN\n";
		print FILE "F2 \"$bits[3]\" 750 0 60 V I C CNN\n";
		print FILE "F3 $bits[7] 1050 0 60 V I C CNN\n";
		print FILE "F4 $bits[1] 150 0 60 V I C CNN \"Description\"\n";
		print FILE "F5 $bits[0] 950 -50 60 V I C CNN \"XMOS Part Number\"\n";
		print FILE "F6 $bits[5] 250 0 60 V I C CNN \"Manufacturer\"\n";
		print FILE "F7 $bits[6] 350 0 60 V I C CNN \"Manufacturer Part Number\"\n";
		#print FILE "F8 $bits[7]\" 550 0 60 V I C CNN \"Tolerance\"\n";
		#print FILE "F9 \"$bits[6]\" 450 0 60 V I C CNN \"Max Voltage\"\n";
		#print FILE "F10 \"$bits[5]\" 650 0 60 V I C CNN \"Dielectric\"\n";
		print FILE "F11 \"$bits[8]\" 850 0 60 V I C CNN \"Approx Volume Cost\"\n";

		print FILE "\$FPLIST\n";
		print FILE " X-$bits[3]\n";
		print FILE "\$ENDFPLIST\n";
		print FILE "DRAW\n";

		if ( $bits[2]  eq "\"discretes:ferrite\"" )
		{
			print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
			print FILE "P 2 0 1 10  -100 30  100 30 N\n";
			print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
			print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";
		}
		else
		{
			print FILE "P 2 0 1 10  -100 -30  100 -30 N\n";
			print FILE "P 2 0 1 10  -100 30  100 30 N\n";
			print FILE "X ~ 1 0 200 170 D 40 40 1 1 P\n";
			print FILE "X ~ 2 0 -200 170 U 40 40 1 1 P\n";
		}

		print FILE "ENDDRAW\n";
		print FILE "ENDDEF\n";
	}

	print FILE "#\n";
	print FILE "#End Library\n";
	close(FILE);

}

main;
