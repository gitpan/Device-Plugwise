
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'bin/plugwise.pl',
    'bin/plugwise_demo.pl',
    'lib/Device/Plugwise.pm',
    't/01-basic.t',
    't/author-critic.t',
    't/release-common_spelling.t',
    't/release-eol.t',
    't/release-no-tabs.t',
    't/release-pod-coverage.t',
    't/release-pod-linkcheck.t',
    't/release-pod-no404s.t',
    't/release-pod-syntax.t',
    't/release-synopsis.t',
    't/stim/basic.txt'
);

notabs_ok($_) foreach @files;
done_testing;
