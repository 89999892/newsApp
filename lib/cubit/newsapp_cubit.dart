import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:newsapp/cache_helper.dart';
import 'package:newsapp/layoutbuilder/categoryScreen.dart';

part 'newsapp_state.dart';

class NewsappCubit extends Cubit<NewsappState> {
  NewsappCubit() : super(NewsappInitial());
List <String> myTitles=['Business','Sports','Science'];
int currentIndex=0;
bool isDark=false;

ChangeThemeMode({bool fromShared}){
 if(fromShared!=null){
   isDark=fromShared;
   emit(ThemeModeState(isDark));
 }else{
   isDark=!isDark;
   CacheHelper.putBoolian('isDark',isDark);
   emit(ThemeModeState(isDark));
 }
}
getCategoryPage(){
return CategoryScreen(currentIndex);
}
List SearchedArticles=[];
TextEditingController searchController = TextEditingController();
  getSearchedList(@required String inputText) async{
   // searchController.text=inputText;
    emit(seatchedLoadingsState());
    Dio dio=Dio();
    dio.options.baseUrl='https://newsapi.org/';
    await dio.get('v2/top-headlines',queryParameters: {
      'country':'eg',
      'q':'$inputText',
      'apiKey':'ab267de3475b4b05abf2fd8e9f967dbf'
    }).then((value) {
      SearchedArticles=value.data['articles'] as List;
      print('herrrrrrreeeeeeer'+SearchedArticles.toString());
      emit(seatchedAtriclesState(SearchedArticles));
      /*if(inputText!=''){
        emit(seatchedAtriclesState(SearchedArticles));}else{
        SearchedArticles=[];
        emit(seatchedLoadingsState());
      }*/

    }
    );
  }
ChangeIndex(int index){
  currentIndex=index;
  print('curr=$currentIndex');
  emit(CurrentindexState(currentIndex));
}
}
