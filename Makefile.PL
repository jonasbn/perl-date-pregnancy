# Makefile.PL for Date-Pregnancy

# $Id$

use ExtUtils::MakeMaker;

WriteMakefile(
	'AUTHOR'        => 'Jonas B. Nielsen, (jonasbn) jonasbn@cpan.org',
    'NAME'	        => 'Date::Pregnancy',
    'VERSION_FROM'  => 'lib/Date/Pregnancy.pm', # finds $VERSION
	'PREREQ_PM' => {
		'Test::More'          => 0,
		'Test::Pod'           => '0.95',
		'Test::Pod::Coverage' => '0.08',
		'File::Find'          => 0,
		'File::Spec'          => 0,
		'DateTime'            => 0,
		'Clone'               => 0,
		'Carp'                => 0,
		'Exporter'            => 0,
		'POSIX'               => 0,
	}
);
