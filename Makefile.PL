use ExtUtils::MakeMaker;
WriteMakefile(
    NAME                => 'DateTime::Format::IBeat',
    VERSION_FROM        => 'lib/DateTime/Format/IBeat.pm',
    PREREQ_PM => {
                'DateTime' => '0.18',
                'Test::More' => '0.47',
            },
    ($] >= 5.005 ?
      (ABSTRACT_FROM => 'lib/DateTime/Format/IBeat.pm',
      AUTHOR     => 'Iain Truskett <spoon@cpan.org>') : ()),
    ( eval($ExtUtils::MakeMaker::VERSION) >= 6.10 ?
        ( NO_META => 1, ) : ()),
);
