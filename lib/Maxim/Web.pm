package Maxim::Web;
use Mojo::Base 'Mojolicious';
use Maxim::Model::Bookmark;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  my $model = Maxim::Model::Bookmark->new();
  $self->helper(
      model => sub {
          return $model;
      }
  );

  my $r = $self->routes;
  $r->namespaces([qw/Maxim::Web::Controller/]);
  $r->get('/')->to('root#index');
  $r->get('/new')->to('root#post');
  $r->post('/create')->to('root#create');


  # Router
  # my $r = $self->routes;
  #
  # # Normal route to controller
  # $r->get('/')->to('example#welcome');
}

1;
