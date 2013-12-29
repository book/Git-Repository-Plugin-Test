use strict;
use warnings;

use Test::Builder::Tester tests => 4;
use Git::Repository qw(Test TestSetUp);
use Test::More;

my $repo = Git::Repository->new_tmp_repo();

test_out('not ok 1 - `git add somefile.pm` should exit 0');
test_fail(+5); # offset to line run_exit_ok is called on below
test_err(
    q(#          got: 128),
    q(#     expected: 0),
);
$repo->run_exit_ok('add', 'somefile.pm');
test_test('run_exit_ok(@cmd) should fail for non-zero exit');

test_out('ok 1 - `git status` should exit 0');
$repo->run_exit_ok('status');
test_test(
    name => 'run_exit_ok(@cmd) should pass non-zero exit',
    skip_err => 1, # run_exit_ok changes behavior with --verbose
);

test_out('not ok 1 - `git add somefile.pm` should exit 0');
test_fail(+5); # offset to line run_exit_ok is called on below
test_err(
    q(#          got: 128),
    q(#     expected: 0),
);
$repo->run_exit_is(0, 'add', 'somefile.pm');
test_test('run_exit_is(0, @cmd) should fail for non-zero exit');

test_out('ok 1 - `git add somefile.pm` should exit 128');
$repo->run_exit_is(128, 'add', 'somefile.pm');
test_test('run_exit_is(128, @cmd) should fail for 128 exit');
