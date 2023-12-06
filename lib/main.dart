import 'package:bookly/const.dart';
import 'package:bookly/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'feature/splash/persentation/splash_view.dart';
import 'package:go_router/go_router.dart';

import 'home/doman_layer/entities/Book_entities.dart';

void main() async{

  await Hive.initFlutter();
Hive.registerAdapter(BookEntityAdapter());

await Hive.openBox<BookEntity>(kFeatureBox);
await Hive.openBox<BookEntity>(kNewestBox);


runApp(const bookly());

}

class bookly extends StatelessWidget {
  const bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,

      //home: SplashView(),
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:
              const Color(0xff100B20)), //background for all screens
    );
  }
}
