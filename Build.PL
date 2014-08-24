
use Module::Build;

Module::Build->new(
    module_name       => 'Date::Pregnancy',
    license           => 'perl',
    dist_version_from => 'lib/Date/Pregnancy.pm',
    requires          => {
        'Test::More' => 0,
        'File::Find' => 0,
        'File::Spec' => 0,
        'DateTime'   => 0,
        'Clone'      => 0,
        'Carp'       => 0,
        'Exporter'   => 0,
        'POSIX'      => 0,
        'perl'       => '5.008',    #5.8.0
    },
    meta_merge => {
        resources => {
            homepage =>
                'https://github.com/jonasbn/Date-Pregnancy',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Pregnancy',
            repository =>
                'https://github.com/jonasbn/Date-Pregnancy',
        }
    },
)->create_build_script;
