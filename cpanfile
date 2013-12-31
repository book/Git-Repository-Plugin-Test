requires 'Carp';
requires 'File::Copy';
requires 'File::Spec';
requires 'File::Temp';
requires 'Git::Repository', '1.13';
requires 'Test::More', '0.94';

on 'develop' => sub {
    requires 'Archive::Tar::Wrapper';
    requires 'Config::Identity';
    requires 'Dist::Zilla';
    requires 'Dist::Zilla::App::Command::cover';
    requires 'Dist::Zilla::Plugin::NameFromDirectory';
    requires 'Dist::Zilla::Plugin::LicenseFromModule';
    requires 'Dist::Zilla::Plugin::ReadmeAnyFromPod';
    requires 'Dist::Zilla::Plugin::CheckChangesHasContent';
    requires 'Dist::Zilla::Plugin::FakeRelease';
    requires 'Dist::Zilla::Plugin::Git::GatherDir';
    requires 'Dist::Zilla::Plugin::Git::NextVersion';
    requires 'Dist::Zilla::Plugin::Git::Tag';
    requires 'Dist::Zilla::Plugin::OurPkgVersion';
    requires 'Dist::Zilla::Plugin::PodVersion';
    requires 'Dist::Zilla::Plugin::Prereqs::FromCPANfile';
    requires 'Dist::Zilla::PluginBundle::Basic';
    requires 'Dist::Zilla::PluginBundle::Filter';
    requires 'Dist::Zilla::PluginBundle::GitHub';
};
