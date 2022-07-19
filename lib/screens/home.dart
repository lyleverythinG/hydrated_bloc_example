import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/personal_info_bloc.dart';
import '../constants/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _fullName = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hydrated Bloc Example'),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<PersonalInfoBloc, PersonalInfoState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter Full Name',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    initialValue: state.fullName,
                    cursorColor: Colors.black87,
                    onChanged: ((value) => _fullName = value),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusColor: Theme.of(context).primaryColor,
                      hintText: 'Enter Full Name',
                    ),
                  ),
                  ElevatedButton(
                    style: Constants.kElevatedButtonStyle,
                    onPressed: () {
                      context.read<PersonalInfoBloc>().add(SaveName(
                            fullName: _fullName,
                          ));
                    },
                    child: const Text(
                      'Save',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
