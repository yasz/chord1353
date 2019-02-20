open IN, "title.txt";
@title = <IN>; #读标题

open IN, "chord1353Lyric.txt"; 
@lyric = <IN>; #读歌词
chomp(@title);
chomp(@lyric);

for $i(0..$#title){
	my $num=(sprintf "%04d",$i+1); # 标题不足左填0
	my $lyric = $lyric[$i+1]; 
	#print "$num $title[$i] $lyric\n";
	
	open OUT, ">../score/$num $title[$i].jcx"; # 上一级目录下的score下
	close OUT;
	
}

open OUT, ">../score/1.jcx";
close OUT;