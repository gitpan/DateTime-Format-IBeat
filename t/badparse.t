# $Id: badparse.t,v 1.1 2003/12/01 08:56:58 koschei Exp $
use Test::More tests => 17;
use strict;
use warnings;
use vars qw( $class );

BEGIN
{
    $class = 'DateTime::Format::IBeat';
    use_ok $class;
}

sub attempt
{
    my ( $method, $what ) = @_;
    my $rv = eval { $class->$method( $what ) };
    $what = '[undef]' unless defined $what;
    ok( !defined $rv, "No return value" );
    like( $@ => qr/^Could not parse (date)?(time)?!/, "Bad parse of $what");
}

{
    attempt( "parse_time", undef );
    attempt( "parse_time", "frob" );
    attempt( "parse_time", 1001 );
    attempt( "parse_time", -10 );

    attempt( "parse_date", undef );
    attempt( "parse_date", "123\." );

    attempt( "parse_datetime", undef );
    attempt( "parse_datetime", "123\." );
}
