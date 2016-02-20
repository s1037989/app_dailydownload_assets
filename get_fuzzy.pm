package App::DailyDownload::Assets::get_fuzzy;
use Mojo::Base 'App::DailyDownload::Assets';

has name => 'Get Fuzzy';
has referer => 'http://www.gocomics.com';
has crawl => sub {[
  'http://www.gocomics.com/$filename/%Y/%m/%d' => sub { shift->dom->at("p.feature_item")->next->find("img")->first->attr("src") }
]};

#has crawl => sub {[
#  'http://localhost:3000/index.html',# => sub { shift->find("img")->attr("src") },
#  'http://localhost:3000/$filename/%Y-%m-%d.html' => sub { shift->find("img")->first->attr("src") },
#]};

#has crawl => sub {[
#  'http://www.babyblues.com',# => sub { shift->find("img")->attr("src") },
#  'http://safr.kingfeatures.com/idn/babyblues/zone/js/index.php?cn=72&zn=132&fn=22&fd=%Y-%m-%d&wt=2&fs=0&null=0' => sub { shift->at("#comicpanel")->find("img")->attr("src") },
#]};

1;
