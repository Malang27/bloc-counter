import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';

class CounterButton extends StatelessWidget {
  final CounterEvent event;
  final IconData icon;

  const CounterButton({
    Key? key,
    required this.event,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<CounterBloc>().add(event),
      child: Icon(icon),
    );
  }
}