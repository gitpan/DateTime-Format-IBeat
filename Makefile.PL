use ExtUtils::MakeMaker;
WriteMakefile(
    NAME                => 'DateTime::Format::IBeat',
    VERSION_FROM        => 'lib/DateTime/Format/IBeat.pm',
    PREREQ_PM => {
                  'DateTime' => '0.18',
                  'Test::More' => '0.47',
                 }
);
