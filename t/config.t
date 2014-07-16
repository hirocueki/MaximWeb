use strict;
use Test::More;

BEGIN {
    use_ok('Maxim');
}

subtest 'load_config' => sub {
    $ENV{PLACK_ENV} = 'development';
    my $config = Maxim->config();
    ok $config;
    isa_ok $config, 'HASH';
};

done_testing();
