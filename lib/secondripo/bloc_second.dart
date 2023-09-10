
import 'package:BlocAPi/model/article.dart';
import 'package:BlocAPi/repository/repositorys.dart';
import 'package:BlocAPi/secondripo/event_second.dart';
import 'package:BlocAPi/secondripo/state_second.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SecondBloc extends Bloc<SecondEvent,SecondState> {
 late SecondRepo _secondRepos ;

   SecondBloc(this._secondRepos) : super(SecondLoadingState()){
    on<LoadedEvent> ((event, emit) async {
      emit(SecondLoadingState());
       try {
          final articles =await _secondRepos.get();
           emit(LoadedState(articles));
       }catch(e){
          ErrorState("Error".toString());
       }
    },);

   }
   
}