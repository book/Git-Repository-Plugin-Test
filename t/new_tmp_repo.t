use strict;
use warnings;

use Test::More tests => 2;

use Git::Repository qw(Test TestSetUp);

subtest 'standard repo' => sub {
    plan tests => 2;

    my $repo = Git::Repository->new_tmp_repo();
    ok(-d $repo->git_dir, 'git_dir exists');
    ok(-d $repo->work_tree, 'work_tree exists');
};

subtest 'bare repo' => sub {
    plan tests => 2;

    my $repo = Git::Repository->new_tmp_repo('--bare');
    ok(-d $repo->git_dir, 'git_dir exists');
    is($repo->work_tree, undef, 'work_tree is undef');
};
