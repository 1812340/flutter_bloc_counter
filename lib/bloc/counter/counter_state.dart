
import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  int counter = 0;
  CounterState({this.counter = 0});

  CounterState copywith({int ? counter}){
    return CounterState(
      counter: counter ?? this.counter
    );
  }

  @override
  List<Object> get props => [counter];
}