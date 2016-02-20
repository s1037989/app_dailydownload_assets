package App::DailyDownload::Assets::baby_blues;
use Mojo::Base 'App::DailyDownload::Assets';

has name => 'Baby Blues';
has referer => 'http://www.babyblues.com/index.php';
has crawl => sub {[
  'http://www.babyblues.com/comics/%B-%-d-%Y' => sub { shift->dom->at("div#comicpanel img")->attr("src") },
]};

1;
