
import 'package:BlocAPi/bloc2/bloc_first.dart';
import 'package:BlocAPi/bloc2/first_event.dart';
import 'package:BlocAPi/bloc2/first_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'repository/repositorys.dart';
import 'secondripo/bloc_second.dart';
import 'secondripo/state_second.dart';

class GScreen extends StatelessWidget {
  const GScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstRepository = context.read<FirstRepository>();
   
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
        return FirstArticleBloc(firstRepository)
      ..add(LoadedEvent());
      },
          ),
      
      ],
     
      child: SafeArea(
        child: Scaffold(
          body: Builder(builder: (context) {
         return MultiBlocListener(
  listeners: [
    BlocListener<FirstArticleBloc, FirstArticleState>(
      listener: (context, state) {
        if (state is LoadingState) {
          print("LoadingState occurred");
        } else if (state is LoadedState) {
          // وضعیت loaded رخ داده است، می‌توانید اقدامات مرتبط با آن را انجام دهید
          print("LoadedState occurred");
        }
      },
    ),
  ],
  child: Column(
    children: [
      Container(
        height: 355,
        color: Colors.amber,
        child: GestureDetector(
          child: Center(
            child: BlocBuilder<FirstArticleBloc, FirstArticleState>(
              builder: (context, state) {
                if (state is LoadingState) {
                  return CircularProgressIndicator();
                } else if (state is LoadedStatee) {
                  // اطلاعات مقالات بارگذاری شده را نمایش دهید
                  return ListView.builder(
                    itemCount: state.articleList.length,
                    itemBuilder: (context, index) {
                      return Text(state.articleList[index].title ?? "noName");
                    },
                  );
                } else {
                  return Text("...");
                }
              },
            ),
          ),
        ),
      ),
      Text("data"),

    ],
  ),
);
          },),
          // body: BlocBuilder<FirstArticleBloc, FirstArticleState>(
          //   builder: (context, state) {
          
          // if (state is LoadingState) {
          //   return Center(child: CircularProgressIndicator());
          // }
          // if (state is LoadedState) {
          //   List<Article> articleList = state.articleList;
          //   return ListView.builder(
          //     itemCount: articleList.length,
          //     itemBuilder: (context, index) {
          //       return Text(articleList[index].title ?? "noName");
          //     },
          //   );
          // }

          
          // if (state is ErrorState) {
          //   String errr = state.errorText;
          //   return Text(errr);  // Don't forget to return the Text widget.
          // }

          // return Container(
          //   child: GestureDetector(
          //     child: Text("...."),
          //   ),
          // );
          
          //   },
          
          // ),
          // body: BlocBuilder<FirstArticleBloc, FirstArticleState>(
          //   builder: (context, state) {
          //     if (state is LoadingState) {
          //       return Center(child: CircularProgressIndicator());
          //     }
          //     if (state is LoadedState) {
          //       List<Article> articleList = state.articleList;
          //       return ListView.builder(
          //         itemCount: articleList.length,
          //         itemBuilder: (context, index) {
          //           return Text(articleList[index].title ?? "noName");
          //         },
          //       );
          //     }

          

          //     if (state is ErrorState) {
          //       String errr = state.errorText;
          //       return Text(errr);  // Don't forget to return the Text widget.
          //     }

          //     return Container(
          //       child: GestureDetector(
          //         child: Text("...."),
          //       ),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}
