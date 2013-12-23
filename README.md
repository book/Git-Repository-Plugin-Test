# NAME

Git::Repository::Plugin::Test - Test exit of Git commands

# VERSION

version 0.001

# SYNOPSIS

    use Test::More tests => 2;
    use Git::Repository qw(Test);

    my $work_tree = File::Temp->newdir();
    Git::Repository->run(init => $work_tree);
    my $repo = Git::Repository->new(work_tree => $work_tree);

    $repo->run_exit_ok('status');
    $repo->run_exit_is(1, 'nonexistant-subcommand');

# DESCRIPTION

Adds `run_exit_ok` and `run_exit_is` methods to the Git::Repository object
that can be used for testing Git operations.

# SEE ALSO

[Git::Repository](https://metacpan.org/pod/Git::Repository)

# AUTHOR

Nathaniel G. Nutter <nnutter@cpan.org>

# COPYRIGHT

Copyright 2013 - Nathaniel G. Nutter

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
