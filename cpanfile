requires 'perl', '<= 5.16.3';
requires 'Config::PL', '0.02';
requires 'DateTime';
requires 'DateTime::Format::MySQL';
requires 'FormValidator::Lite';
requires 'Mojo::Base';
requires 'Mojo::Server::PSGI';
requires 'Mojolicious::Commands';
requires 'Mouse';
requires 'Plack::Builder';
requires 'Teng';
requires 'Teng::Schema::Declare';
requires 'parent';

on test => sub {
    requires 'DBD::mysql', '4.027';
    requires 'DBI';
    requires 'Path::Tiny';
    requires 'SQL::SplitStatement';
    requires 'Test::Mojo';
    requires 'Test::More';
    requires 'Test::mysqld', '0.17';
};
