import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/cubit/newsapp_cubit.dart';
import 'package:newsapp/model/NewsModel.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<NewsappCubit, NewsappState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = BlocProvider.of<NewsappCubit>(context);

            return Column(children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: cubit.searchController,
                    onChanged: (String value) {
                      searchController.text = value;
                      print(value);
                      BlocProvider.of<NewsappCubit>(context)
                          .getSearchedList(searchController.text);

                      //cubit.searchController.text=value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'search...',
                        //fillColor: Colors.white,
                        //filled: true,
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor))),
                  )),
              (state is seatchedLoadingsState)
                  ? searchController.text == ''
                      ? Container()
                      : CircularProgressIndicator()
                  : Expanded(
                      child:
                          NewsModel(CategoryArtecles: cubit.SearchedArticles),
                    )
            ]);
          },
        ),
      ),
    );
  }
}
