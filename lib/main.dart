import 'package:ajudantetech/models/user/user_manager.dart';
import 'package:ajudantetech/screens/base_screen.dart';
import 'package:ajudantetech/screens/landing_page.dart';
import 'package:ajudantetech/screens/register/register_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(
        create: (_) => UserManager(),
        lazy: false,
      )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: (settings){
          switch (settings.name){
            case '/register':
              return MaterialPageRoute(
                  builder:(_) => RegisterScreen()
              );
            case '/menu':
            default:
              return MaterialPageRoute(
                builder:(_) => BaseScreen()
              );
          }
        },
        home: BaseScreen(),
      ),
    );
  }
}

