
import 'package:BlocAPi/model/article.dart';
import 'package:equatable/equatable.dart';

 abstract class SecondState extends Equatable {}

class SecondLoadingState extends SecondState{
  @override
  List<Object?> get props => [];
}

class LoadedState extends SecondState{
  List<Article> article = [];
  LoadedState(this.article);
  @override
  List<Object?> get props => [article];
}

class ErrorState extends SecondState{
  late String erorrText;
  ErrorState(this.erorrText);
  @override
  List<Object?> get props => [erorrText];
}

