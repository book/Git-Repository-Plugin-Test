# NAME

Git::Repository::Plugin::Test - Helper methods for testing interactions with Git

# VERSION

version 0.002

# SYNOPSIS

    use Test::More tests => 2;
    use Git::Repository qw(Test);

    # easily create a temporary repository to test with
    my $repo = Git::Repository->new_tmp_repo();

    # run Git commands as tests
    $repo->run_exit_ok('status');
    $repo->run_exit_is(1, 'nonexistant-subcommand');

    # install a hook into the temporary repository
    $repo->install_hook('my-hook-file', 'pre-receive');

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

## init\_tmp\_repo(@init\_opts)

Initializes a new repository in a temporary directory.  Options, such as
`--bare`, can be passed in.

## new\_tmp\_repo(@init\_opts, $options)

Initializes a new repository in a temporary directory and returns a
[Git::Repository](https://metacpan.org/pod/Git::Repository) object.  Like `init_tmp_repo`,
`new_tmp_repo` accepts a list of options for the `init` command and like
[Git::Repository](https://metacpan.org/pod/Git::Repository)'s `new` `new_tmp_repo` also accepts a
reference to an option hash.

## install\_hook($source, $target)

Install a `$target`, e.g. 'pre-receive', hook into the repository.

# SEE ALSO

[Git::Repository](https://metacpan.org/pod/Git::Repository), [Test::Builder](https://metacpan.org/pod/Test::Builder)

# AUTHOR

Nathaniel G. Nutter <nnutter@cpan.org>

# COPYRIGHT

Copyright 2013 - Nathaniel G. Nutter

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
