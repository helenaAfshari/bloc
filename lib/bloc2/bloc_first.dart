
import 'package:BlocAPi/bloc2/first_event.dart';
import 'package:BlocAPi/bloc2/first_state.dart';
import 'package:BlocAPi/repository/repositorys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstArticleBloc extends Bloc<FirstArticleEvent,FirstArticleState> {
  
  late FirstRepository _firstTepository;
  FirstArticleBloc(this._firstTepository) : super(LoadingState()){ 

    on<LoadedEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final articles =await _firstTepository.getArticless();
        emit(LoadedStatee(articles));
      }catch(e){
        emit(ErrorState(e.toString()));
      }
    },);
  }
  
}
