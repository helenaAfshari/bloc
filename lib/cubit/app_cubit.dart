
import 'package:BlocAPi/cubit/app_cubit_states.dart';
import 'package:BlocAPi/repository/repositorys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubits extends Cubit<CubitStates>{
     late FirstRepository firstTepository;
     
  AppCubits(this.firstTepository) : super(LoadingState());

  Future<void> fetchT() async {
    emit(LoadingState());
    try{
       final articles =await firstTepository.getArticless();
        emit(LoadedWelcomeState(articles));
    }catch(e){
      ErrorState(e.toString());
    }
  }

}