# $Id$
use Test::More tests => 7;
use strict;
use warnings;
use vars qw( $class );

BEGIN
{
    $class = 'DateTime::Format::IBeat';
    use_ok $class;
}
use DateTime;

while (<DATA>)
{
    my ($epoch, $expected) = split ' ';
    my $dt = DateTime->from_epoch( epoch => $epoch );
    my $got = $class->format_time( $dt );
    is( $got => $expected, "Testing $epoch => $expected" );
}

pass "Didn't crash and burn."

__DATA__
1049160602	@104
1049237999	@999
1049238000	@000
1049238086	@000
1049238087	@001
