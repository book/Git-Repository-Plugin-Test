use strict;
use warnings;

use Test::More tests => 3;

use File::Temp qw();
use Git::Repository qw(Test TestSetUp);

my $repo = Git::Repository->new_tmp_repo();

my $source = File::Temp->new();

my $hook = $repo->hook_path('post-receive');

ok(! -e $hook, 'post-receive hook should not exist yet');
$repo->install_hook($source, 'post-receive');
ok(-e $hook, 'post-receive hook exist after install');
ok(-x $hook, 'post-receive hook is executable');
