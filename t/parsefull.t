use Test::More tests => 5;
use strict;
use warnings;
use vars qw( $class );

BEGIN {
    $class = 'DateTime::Format::IBeat';
    use_ok $class;
}

while (<DATA>)
{
    chomp;
    my ($input, $expected) = split /\s*=>\s*/;
    my $dt = $class->parse_datetime( $input );
    my $got = $dt->datetime;
    is( $got => $expected, "Parsing [$input] to <$expected>" );

    my $formatted = $class->format_datetime( $dt );
    is ( $formatted => $input, "Formatting [$expected] to <$input>" );

}

__DATA__
@d01.04.03 @765  =>  2003-04-01T17:21:36
@d16.07.03 @000  =>  2003-07-15T23:00:00
