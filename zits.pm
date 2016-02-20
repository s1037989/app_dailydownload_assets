package App::DailyDownload::Assets::zits;
use Mojo::Base 'App::DailyDownload::Assets';

has name => 'Zits';
has referer => 'http://www.zitscomics.com/index.php';
has crawl => sub {[
  'http://www.zitscomics.com/comics/%B-%-d-%Y' => sub { shift->dom->at("div#comicpanel img")->attr("src") },
]};

1;
