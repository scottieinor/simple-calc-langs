#!/usr/bin/perl

use strict;
use Scalar::Util qw(looks_like_number);

my $operand = $ARGV[1];
my $num1    = $ARGV[0];
my $num2    = $ARGV[2];

# Do some sanity checking on the input
if (@ARGV != 3) {
	die(usage());
} elsif (!looks_like_number($num1)) {
	die($num1 . " is not a number\n");
} elsif (!looks_like_number($num2)) {
	die($num2 . " is not a number\n");
}

if ($operand eq '+') {
	print $num1 + $num2;
} elsif ($operand eq '-') {
	print $num1 - $num2;
} elsif ($operand eq '/') {
	print $num1 / $num2;
} elsif ($operand eq '*') {
	print $num1 * $num2;
}

print "\n";

#############################################################

sub usage {
	return "$0 [num] [+-*/] [num]\n";
}
