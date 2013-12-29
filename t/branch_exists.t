use strict;
use warnings;

use Test::Builder::Tester tests => 4;
use Git::Repository qw(File Test TestSetUp);
use Test::More;

my $repo = Git::Repository->new_tmp_repo();
my $readme = $repo->file('README.md');
$readme->openw->say('Something about nothing.');
$readme->add->commit('-m', "add $readme");

test_out(q(ok 1 - 'master' branch exists));
$repo->branch_exists('master');
test_test('branch_exists passes for existing branch');

test_out(q(ok 1 - 'fake' branch does not exist));
$repo->branch_not_exists('fake');
test_test('branch_not_exists passes for non-existing branch');

test_out(q(not ok 1 - 'fake' branch exists));
test_fail(+1);
$repo->branch_exists('fake');
test_test('branch_exists fails for non-existing branch');

test_out(q(not ok 1 - 'master' branch does not exist));
test_fail(+1);
$repo->branch_not_exists('master');
test_test('branch_not_exists fails for existing branch');
