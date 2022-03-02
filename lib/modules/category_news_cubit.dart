import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

part 'category_news_state.dart';

class CategoryNewsCubit extends Cubit<CategoryNewsState> {
  CategoryNewsCubit() : super(CategoryNewsInitial());
  List Business =[];
  getBusiness() async{
    Dio dio=Dio();
    dio.options.baseUrl='https://newsapi.org/';
    await dio.get('v2/top-headlines',queryParameters: {
      'country':'eg',
      'category':'business',
      'apiKey':'ab267de3475b4b05abf2fd8e9f967dbf'
    }).then((value) {
      Business=value.data['articles'] as List;
      print(Business.toString());
      emit(BuisnessState());
    }
    );
}
  List Sports =[];
  getSports() async{
    Dio dio=Dio();
    dio.options.baseUrl='https://newsapi.org/';
    await dio.get('v2/top-headlines',queryParameters: {
      'country':'eg',
      'category':'sports',
      'apiKey':'ab267de3475b4b05abf2fd8e9f967dbf'
    }).then((value) {
      Sports=value.data['articles'] as List;
      print(Sports.toString());
      emit(SportState());
    }
    );
  }
  List science =[];
  getscience() async{
    Dio dio=Dio();
    dio.options.baseUrl='https://newsapi.org/';
    await dio.get('v2/top-headlines',queryParameters: {
      'country':'eg',
      'category':'science',
      'apiKey':'ab267de3475b4b05abf2fd8e9f967dbf'
    }).then((value) {
      science=value.data['articles'] as List;
      print(science.toString());
      emit(ScienceState());
    }
    );
  }
}
