package App::DailyDownload::Assets::dilbert;
use Mojo::Base 'App::DailyDownload::Assets';

has name => 'Dilbert';
has referer => 'http://www.dilbert.com';
has crawl => sub {[
  'http://www.dilbert.com/strip/%Y-%m-%d' => sub { shift->dom->at("a.img-comic-link img")->attr("src") },
]};

1;
