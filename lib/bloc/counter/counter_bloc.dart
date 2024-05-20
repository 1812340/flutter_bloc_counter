import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/counter/counter_events.dart';
import 'package:bloc_counter/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncreamentCounter>(_increament);
    on<DecreamentCounter>(_decreament);
  }
  void _increament(IncreamentCounter event, Emitter<CounterState> emit) {
    emit(state.copywith(counter: state.counter + 1));
  }
  void _decreament(DecreamentCounter event, Emitter<CounterState> emit) {
    emit(state.copywith(counter: state.counter - 1));
  }
}
 