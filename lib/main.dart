import 'package:axis_task/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
    final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      
     debugShowCheckedModeBanner: false,
     onGenerateRoute: appRouter.generateRoute,
      
    );
  }
}


