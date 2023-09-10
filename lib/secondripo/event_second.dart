
import 'package:equatable/equatable.dart';

abstract class SecondEvent extends Equatable{
  const SecondEvent();
}

class LoadedEvent extends SecondEvent {
  @override
  List<Object?> get props => [];
}