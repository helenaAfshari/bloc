
import 'package:BlocAPi/model/article.dart';
import 'package:equatable/equatable.dart';

abstract class FirstArticleState extends Equatable{}


class LoadedStatee extends FirstArticleState {
  List<Article> articleList = [];
  LoadedStatee(this.articleList);
  @override
  List<Object?> get props => [articleList];

}

class LoadingState extends FirstArticleState{
  @override
  List<Object?> get props => [];
}

class ErrorState extends FirstArticleState{
  final String errorText ;
  ErrorState(this.errorText);
  @override
  List<Object?> get props => [errorText];

}