import 'package:dio/dio.dart';
import 'package:BlocAPi/model/article.dart';
import 'package:flutter/material.dart';

class Repository {
  String endpoint =
      "https://techblog.sasansafari.com/Techblog/api/article/get.php?command=new";

  Future<List<Article>> getArticles() async {
    List<Article> list = [];
    await Dio().get(endpoint).then((response) {
      if (response.statusCode == 200) {
        for (var articleJson in response.data) {
          list.add(Article.fromJson(articleJson));
        }
      }
    });
    return list;
  }
}

class FirstRepository {
 String api =  "https://techblog.sasansafari.com/Techblog/api/article/get.php?command=new";

   Future<List<Article>>  getArticless() async {
      List<Article> listArticle = [];
    await Dio().get(api).then((value) {
      if(value.statusCode == 200){
        for (var element in value.data) {
          Article _arti = Article.fromJson(element);
          listArticle.add(_arti);
        }
      }
    });
      return listArticle;
   }
}



class SecondRepo {
  String api = "https://techblog.sasansafari.com/Techblog/api/article/get.php?command=new";

  Future<List<Article>> get ()async{
    List<Article> aa = [];
   await  Dio().get(api).then((value) {
    if(value.statusCode == 200){
      for (var element in value.data) {
        Article articleModel = Article.fromJson(element);
        aa.add(articleModel);
      }
    }
   });
   return aa;
  }
  
}

class DRepooo {
  String api = "https://techblog.sasansafari.com/Techblog/api/article/get.php?command=new";

  Future<List<Article>> get ()async{
    List<Article> aa = [];
   await  Dio().get(api).then((value) {
    if(value.statusCode == 200){
      for (var element in value.data) {
        Article articleModel = Article.fromJson(element);
        aa.add(articleModel);
      }
    }
   });
   return aa;
  }
  
}

