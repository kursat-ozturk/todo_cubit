import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/cubits/cubits.dart';
import 'package:todo_cubit/models/todo_model.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'TODO',
          style: TextStyle(fontSize: 40),
        ),
        BlocListener<TodoListCubit, TodoListState>(
          listener: (context, state) {
            final int activeTodoCount = state.todos
                .where((Todo todo) => !todo.completed)
                .toList()
                .length;
            context
                .read<ActiveTodoCountCubit>()
                .calculateActiveTodoCount(activeTodoCount);
          },
          child: BlocBuilder<ActiveTodoCountCubit, ActiveTodoCountState>(
            builder: (context, state) {
              return Text(
                '${state.activeTodoCount} items left',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.redAccent,
                ),
              );
            },
          ),
        ),
        //   Text(
        //     '${context.watch<ActiveTodoCountCubit>().state.activeTodoCount} items left',
        //     style: TextStyle(
        //       fontSize: 20,
        //       color: Colors.redAccent,
        //     ),
        //   ),
      ],
    );
  }
}
