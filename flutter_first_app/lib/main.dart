import 'package:flutter/material.dart';
import 'package:flutter_first_app/quick_actions_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter_first_app/app_state.dart';

void main() {
  
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'QuickActions Demo', home: QuickActionsManager(child: 
        MultiProvider(providers: [
                ChangeNotifierProvider.value(value: AppState(),)
            ],
            child: Home(),)));
        
  }
  
}