# $Id$

use strict;
use Test::More tests => 9;
use DateTime;

use_ok( "Date::Pregnancy", qw(calculate_week));

my $dt = DateTime->new(
	year  => 2004,
	month => 3,
	day   => 19,
);
is($dt->week_number, 12);

my $week;
ok($week = calculate_week(
	first_day_of_last_period => $dt,
));

like($week, qr/\d+/);

my $dt2 = DateTime->new(
	year  => 2004,
	month => 10,
	day   => 9,
);

ok($week = calculate_week(
	first_day_of_last_period => $dt,
	date                           => $dt2,
));

is($week, 29);

$dt2 = DateTime->new(
	year  => 2004,
	month => 12,
	day   => 24,
);

ok($week = calculate_week(
	first_day_of_last_period => $dt,
	date                           => $dt2,
));

is($week, 40);

is(calculate_week(), undef);
