import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/cache_helper.dart';
import 'package:newsapp/cubit/newsapp_cubit.dart';
import 'package:newsapp/homepage.dart';
import 'package:hexcolor/hexcolor.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(BlocProvider(
      create: (context) => NewsappCubit()..ChangeThemeMode(fromShared: CacheHelper.getboolian('isDark')),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    var cubit=BlocProvider.of<NewsappCubit>(context);
    return BlocConsumer<NewsappCubit,NewsappState>(
      listener: (context,state){},
      builder:(context,state){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              backgroundColor: Colors.white,
              accentColor: Colors.deepOrangeAccent,
              primaryColor: Colors.deepOrangeAccent,
              canvasColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: TextTheme( body1:TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold) ,),
              appBarTheme: AppBarTheme(
                  color: Colors.white,

                  iconTheme:IconThemeData(color: Colors.black) ,
                  actionsIconTheme: IconThemeData(color: Colors.black),
                  textTheme: TextTheme(
                      body1:TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold) ,
                      title: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  elevation: 0)),
          darkTheme: ThemeData(
              primaryColor: Colors.deepOrangeAccent,
              iconTheme: IconThemeData(color: Colors.grey),

              backgroundColor: Colors.black,
              accentColor: Colors.deepOrangeAccent,
              canvasColor: HexColor('4A4743'),
              appBarTheme: AppBarTheme(
                  color:  HexColor('4A4743'),

                  textTheme: TextTheme(

                      title: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),

                  elevation: 0),
              textTheme: TextTheme(
                  body1:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold) ,
                  title: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold))),
          themeMode: cubit.isDark==false?ThemeMode.dark:ThemeMode.light,

          home: HomePage(),
        );
      },
    );
  }
}
