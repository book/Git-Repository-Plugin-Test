use strict;
use warnings;

use Test::More tests => 3;
use Test::Fatal qw(exception);

use Git::Repository qw(Test TestSetUp);

my $options = {
    env => {
        GIT_COMMITTER_EMAIL => 'book@cpan.org',
        GIT_COMMITTER_NAME  => 'Philippe Bruhat (BooK)',
    },
};

my $repo = Git::Repository->new_tmp_repo($options);
is_deeply($repo->options, $options, 'options match');

my $bare_repo = Git::Repository->new_tmp_repo('--bare', $options);
is_deeply($bare_repo->options, $options, 'options match');

like(exception { Git::Repository->new_tmp_repo($options, $options) },
    qr/option hashes/, 'exception thrown if multiple option hashes');
