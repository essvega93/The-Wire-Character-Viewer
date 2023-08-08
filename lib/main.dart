import 'package:flutter/material.dart';
import 'package:wireviewer/common/strings_constant.dart';
import 'package:wireviewer/di/di_setup.dart';
import 'package:wireviewer/ui/article_detail/presentation/screen/article_detail.dart';
import 'package:wireviewer/ui/articles_list/data/model/topic.dart';
import 'package:wireviewer/ui/home_page.dart';

Future<dynamic> main() async {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        ArticleDetail.routeKey: (BuildContext context) => ArticleDetail(ModalRoute.of(context)!.settings.arguments! as Topic),
      },
    );
  }
}
