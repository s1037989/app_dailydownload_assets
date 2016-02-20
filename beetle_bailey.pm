package App::DailyDownload::Assets::beetle_bailey;
use Mojo::Base 'App::DailyDownload::Assets';

has name => 'Beetle Bailey';
has referer => 'http://www.beetlebailey.com/index.php';
has crawl => sub {[
  'http://www.beetlebailey.com/comics/%B-%-d-%Y' => sub { shift->dom->at("div#comicpanel img")->attr("src") },
]};

1;
