# $Id$
use Test::More tests => 17;
use strict;
use warnings;
use vars qw( $class );

sub vdiag ($)
{
    diag @_ if $ENV{TEST_VERBOSE};
}

BEGIN
{
    $class = 'DateTime::Format::IBeat';
    use_ok $class;
}
use DateTime;

while (<DATA>)
{
    my ($ehour, $eminute, $esecond, $beats) = split ' ';
    my $got = $class->parse_time( $beats );
    vdiag "Testing $beats => $ehour:$eminute:$esecond";
    cmp_ok ( $got->hour, '==', $ehour, "hour $ehour ($beats)" );
    cmp_ok ( $got->minute, '==', $eminute, "min $eminute ($beats)" );
    cmp_ok ( $got->second, '==', $esecond, "sec $esecond ($beats)" );
}

pass "Didn't crash and burn."

__DATA__
01 29 45	@104
22 58 33	@999
23 00 00	@000
23 01 26	@001
11 00 00	@500
