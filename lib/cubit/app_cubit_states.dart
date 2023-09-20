
import 'package:BlocAPi/model/article.dart';
import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable{}

class LoadingState extends CubitStates{
  
  @override
  List<Object?> get props => [];
  
}

class LoadedWelcomeState extends CubitStates{
  List<Article> artticles=[];
  LoadedWelcomeState(this.artticles);
  @override
  List<Object?> get props => [artticles];
}
 
class ErrorState extends CubitStates{
  String errorText ;
  ErrorState(this.errorText);
  @override
  List<Object?> get props =>[];

}