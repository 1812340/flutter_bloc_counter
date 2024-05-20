import 'package:bloc_counter/bloc/counter/counter_bloc.dart';
import 'package:bloc_counter/bloc/counter/counter_events.dart';
import 'package:bloc_counter/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app with bloc"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            return Center(
            child: Text(
              state.counter.toString(),
              style: const TextStyle(fontSize: 60),
            ),
          );
          },
          ),


      
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                context.read<CounterBloc>().add(IncreamentCounter());
              }, child: const Text("Increment")),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: () {
                context.read<CounterBloc>().add(DecreamentCounter());
              }, child: const Text("Decrement"))
            ],
          ),
        ],
      ),
    );
  }
}
