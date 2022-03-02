import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/model/NewsModel.dart';
import 'package:newsapp/modules/category_news_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class CategoryScreen extends StatelessWidget {
  final categoryIndex;

  const CategoryScreen(this.categoryIndex) ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryNewsCubit(),
      child: Builder(
        builder: (context){
          switch (categoryIndex){
            case 0:
              BlocProvider.of<CategoryNewsCubit>(context).getBusiness();

              break;
            case 1:
              BlocProvider.of<CategoryNewsCubit>(context).getSports();

              break;
            case 2:
              BlocProvider.of<CategoryNewsCubit>(context).getscience();
              }


          return BlocConsumer<CategoryNewsCubit, CategoryNewsState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = BlocProvider.of<CategoryNewsCubit>(context);
              List CategoryArtecles=[];
              switch (categoryIndex){
                case 0:
                  CategoryArtecles= cubit.Business;
                  break;
                case 1:

                  CategoryArtecles=cubit.Sports;
                  break;
                case 2:
                  CategoryArtecles=cubit.science;}

             if(state is CategoryNewsInitial){
               return Center(child: CircularProgressIndicator(),);
             }else{

               return NewsModel(CategoryArtecles: CategoryArtecles);
             }
            },
          );
    }


      ),
          );
        }

  }

