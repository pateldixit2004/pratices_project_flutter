class NewsModel
{
  String? status;
  List<Articles>? articles=[];

  NewsModel({this.status, this.articles});

  factory NewsModel.fromJSon(Map m1)
  {
    List l1=m1['articles'];
    return NewsModel(status: m1['status'],articles: l1.map((e) => Articles.fromJson(e)).toList());
  }


}

class Articles
{
  String? author,title,stat;

  Articles({this.author, this.title,this.stat});
  factory Articles.fromJson(Map m1)
  {
    // List l1=m1['source'];
    return Articles(author: m1['author'],title:m1['tite'],  );
  }
}

class sta
{
  int? name;

  sta({this.name});
  factory sta.fromJson(Map m1)
  {
    return sta(name: m1['name']);
  }

}