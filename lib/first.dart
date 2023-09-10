
import 'package:BlocAPi/bloc2/bloc_first.dart';
import 'package:BlocAPi/bloc2/first_event.dart';
import 'package:BlocAPi/bloc2/first_state.dart';
import 'package:BlocAPi/model/article.dart';
import 'package:BlocAPi/repository/repositorys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // FirstRepository firstTepository = (RepositoryProvider.of<FirstRepository>(context));
    final firstRepository = context.watch<FirstRepository>();
    final firsRepository = context.watch<Repository>();
    // final repository =context.watch<Repository>();
    // final repositoryy = context.read<Repository>();
    //blockProvider میتونه فقط بلاک مارا قرار بدهد
    //اینجا اسمش FirstArticleBlock هست
    return BlocProvider(
      create: (context) => FirstArticleBloc(firstRepository)
      ..add(LoadedEvent()),
      child: SafeArea(
       child: Scaffold(
        //blockBuilder میاد
        // این هم بتواند state هایی که در این بلاک داره emit میشه 
        //منتشر میشه برای این رابط کاربری  را مدیریت کند و از طرفی به این بلاک هم دسترسی داشته باشد منظور به ArticleBloc هست
        body: BlocBuilder<FirstArticleBloc,FirstArticleState>(builder: (context, state) {
        
          if(state is LoadingState){
             return Center(child: CircularProgressIndicator());
          }

          if(state is LoadedStatee){
            List<Article> articleList = state.articleList;
            return ListView.builder(
              itemCount: articleList.length,
              itemBuilder: (context, index) {
               return Text(articleList[index].title?? "noName");
            },);
          }

          if(state is ErrorState){
            String errr = state.errorText;
             Text(errr);
          }

        
          return Container(
            child: GestureDetector(
              child: Text("....")),
          );
        },),
       )),
      
      );
      
  }
}