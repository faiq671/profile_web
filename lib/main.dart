import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/profile_bloc.dart';
import 'screens/profile_page.dart';
import 'services/profile_repository.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ProfileRepository(),
      child: BlocProvider(
        create: (context) => ProfileBloc(
          repository: context.read<ProfileRepository>(),
        ),
        child: MaterialApp(
          title: 'Rehan Pratama — Profil & Bio',
          debugShowCheckedModeBanner: false,
          theme: buildAppTheme(),
          home: const ProfilePage(),
        ),
      ),
    );
  }
}
