
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class FirstArticleEvent extends Equatable{
  const FirstArticleEvent();
}

class LoadedEvent extends FirstArticleEvent{
  @override
  List<Object?> get props => [];
}