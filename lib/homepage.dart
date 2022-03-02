import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/cubit/newsapp_cubit.dart';
import 'package:newsapp/layoutbuilder/categoryScreen.dart';
import 'package:newsapp/layoutbuilder/search_Screen.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsappCubit, NewsappState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cuibit = BlocProvider.of<NewsappCubit>(context);
          int MyIndex = cuibit.currentIndex;
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text('News App'),
                actions: [ IconButton(icon: Icon(Icons.search ,), onPressed: (){
                  cuibit.SearchedArticles=[];
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SearchScreen()));

                }),
                  IconButton(icon: Icon(Icons.nights_stay), onPressed: (){
                    cuibit.ChangeThemeMode();
                  }),
               ],
              ),
              body: cuibit.getCategoryPage(),
              bottomNavigationBar: BottomNavigationBar(
                unselectedItemColor: Theme.of(context).iconTheme.color,
                currentIndex: MyIndex,
                onTap: (index) {
                  cuibit.ChangeIndex(index);
                  print('$index');
                },
                items: _bottomNavItems(),
              ),
            ),
          );
        });
  }

  List<BottomNavigationBarItem> _bottomNavItems() {
    return [
      BottomNavigationBarItem(
          label: 'Business', icon: Icon(Icons.business_center)),
      BottomNavigationBarItem(
          label: 'Sports', icon: Icon(Icons.sports_soccer_outlined)),
      BottomNavigationBarItem(
          label: 'Science', icon: Icon(Icons.science_outlined)),
    ];
  }
}
