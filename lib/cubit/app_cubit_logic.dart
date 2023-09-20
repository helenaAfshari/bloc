
import 'package:BlocAPi/cubit/app_cubit.dart';
import 'package:BlocAPi/cubit/app_cubit_states.dart';
import 'package:BlocAPi/cubit/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  void initState() {
    super.initState();
   // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<AppCubits>();
      cubit.fetchT();
   // });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
              builder: (context, state) {
                if (state is LoadingState) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is LoadedWelcomeState) {
                  // اطلاعات مقالات بارگذاری شده را نمایش دهید
                  return ListView.builder(
                    itemCount: state.artticles.length,
                    itemBuilder: (context, index) {
                      return Text(state.artticles[index].title);
                    },
                  );
                } else {
                  return Text("...");
                }
              },
            ),
    );
  }
}