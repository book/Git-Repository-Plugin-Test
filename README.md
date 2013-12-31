# NAME

Git::Repository::Plugin::Test - Helper methods for testing interactions with Git

# VERSION

version 0.007

# SYNOPSIS

    use Test::More tests => 2;
    use Git::Repository qw(Test);

    my $repo = Git::Repository->new(...);

    # run Git commands as tests
    $repo->run_exit_ok('status');
    $repo->run_exit_is(1, 'nonexistant-subcommand');

# DESCRIPTION

Adds `run_exit_ok` and `run_exit_is` methods to the Git::Repository object
that can be used for testing Git operations.

# METHODS

[Git::Repository::Plugin::Test](https://metacpan.org/pod/Git::Repository::Plugin::Test) adds the
following methods:

## run\_exit\_ok(@cmd)

Like [Git::Repository](https://metacpan.org/pod/Git::Repository)'s `run` but exceptions are caught and
reported as test failures.

## run\_exit\_is($expected\_exit\_code, @cmd)

Like [Git::Repository](https://metacpan.org/pod/Git::Repository)'s `run` but exceptions are caught and
reported as test failures unless exit code matches expected exit code.

## branch\_exists($branchname)
=head2 branch\_not\_exists($branchname)

Test for the existance of a branch.

# SEE ALSO

[Git::Repository](https://metacpan.org/pod/Git::Repository), [Test::Builder](https://metacpan.org/pod/Test::Builder), [Git::Repository::Plugin::TestSetUp](https://metacpan.org/pod/Git::Repository::Plugin::TestSetUp)

# AUTHOR

Nathaniel G. Nutter <nnutter@cpan.org>

# COPYRIGHT

Copyright 2013 - Nathaniel G. Nutter

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
