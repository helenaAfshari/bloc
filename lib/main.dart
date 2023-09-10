

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import 'repository/all_repo.dart';

// void main(){
//    runApp(const MyWidget());
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//         // return RepositoryProvider(
//     // create: (context) => FirstRepository(),
//     //   child: BlocProvider(
//     //     create: (context) => FirstArticleBloc(RepositoryProvider.of<FirstRepository>(context)),
//     //   ),
//     // );

//  //  return MultiRepositoryProvider(
//     //   providers: [
//     //    RepositoryProvider<FirstRepository>(
//     //     child: First(),
//     //    create:  (context) => FirstRepository(),),

//     //    RepositoryProvider<Repository>(
//     //    child: Home(),
//     //    create:  (context) => Repository(),
//     //    ),
      
//     // ],
//        return
//       MaterialApp(
//            home: Multi(),
//          );

//            // return  MaterialApp(
//     //     //ریپازیتوری پرووایدر شرایطی رو فراهم میکنه که بتونسیم در اجرای ا.ولیه داده های رو از ریپازیتوری دریافت و مقدار دهی کنیم
//     //     //ریپازیتوری پروایدر برای یک بار داده ها را از سرور میگیرد
//     //     home: RepositoryProvider(
//     //   create: (BuildContext context) => FirstRepository(),
//     //   child: 
//     //   First(),
//     // ));
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'repository/all_repo.dart';
import 'repository/repositorys.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
       return
      MaterialApp(
           home: Multi(),
         );
  }
}





