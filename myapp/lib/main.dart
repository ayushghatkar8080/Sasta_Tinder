import 'package:flutter/material.dart';
import 'package:splash_screen_view/splash_screen_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:myapp/src/pages/entry_point/page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Supabase.initialize(
    url: 'https://nsrxsbtvqkieuoqfipyg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic2VydmljZV9yb2xlIiwiaWF0IjoxNjQxMzkzNTAzLCJleHAiOjE5NTY5Njk1MDN9.zMWaci7aDaf3qO9FGrTik4uDOdWad_UX1fDEVmnyeUE',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sasta tinder',
      home: SplashScreenView(
        navigateRoute: PageEntryPoint(),
        duration: 2200,
        imageSize: 140,
        imageSrc: "teta-app.png",
        text: "",
        textType: TextType.NormalText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
