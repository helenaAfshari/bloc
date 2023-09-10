

import 'package:BlocAPi/bloc2/bloc_first.dart';
import 'package:BlocAPi/first.dart';
import 'package:BlocAPi/true.dart';
import 'package:BlocAPi/repository/repositorys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllRepository extends StatelessWidget {
  const AllRepository({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
    create: (context) => FirstRepository(),
      child: BlocProvider(
        create: (context) => FirstArticleBloc(RepositoryProvider.of<FirstRepository>(context)),
      ),
    );
  }
}

class Multi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
       RepositoryProvider<FirstRepository>(
        child: First(),
       create:  (context) => FirstRepository(),),
        
      

    ],  child:GScreen(),
   
    );
  }
}
