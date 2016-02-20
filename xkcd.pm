package App::DailyDownload::Assets::xkcd;
use Mojo::Base 'App::DailyDownload::Assets';

has name => 'Xkcd';
has referer => 'https://www.xkcd.com';
has crawl => sub {[
  'http://localhost:3000/%Y%m%d' => sub { shift->json->{img} },
]};

1;
