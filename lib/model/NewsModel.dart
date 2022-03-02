import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class NewsModel extends StatelessWidget {
   final List CategoryArtecles;

  const NewsModel({@required this.CategoryArtecles}) ;


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics:BouncingScrollPhysics() ,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  //CategoryArtecles[index]['url']
                  onTap: ()async{
                    await  launch('${CategoryArtecles[index]['url']}');

                  },
                  child: Container(
                      width: 150,
                      height: 150,

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),

                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      //CategoryArtecles[index]['urlToImage']
                      child: Image.network('${CategoryArtecles[index]['urlToImage']}',fit: BoxFit.cover, )),
                )
                ,
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          //CategoryArtecles[index]['title']
                          child: Text(
                            '${CategoryArtecles[index]['title']}',
                            style: Theme.of(context).textTheme.body1,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Container(

                              width: 70,
                              child: Text(
                                //CategoryArtecles[index]['author']
                                  CategoryArtecles[index]['author'] == null
                                      ? ''
                                      : CategoryArtecles[index]['author'],
                                  style: TextStyle(color: Colors.redAccent,fontSize: 15),
                                  overflow: TextOverflow.ellipsis),
                            ),

                            Expanded(
                                child: Row(children: [
                                  Text(
                                    //CategoryArtecles[index]['publishedAt']
                                    '${CategoryArtecles[index]['publishedAt']}',style: TextStyle(color: Colors.grey,fontSize: 13),),
                                  Icon(Icons.access_time_outlined,color: Colors.grey,size: 17,)
                                ],)
                            ),
                            // Text('${DateFormat.MMMd().format(CategoryArtecles[index]['publishedAt'])}'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          );
        },
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Divider(
            thickness: 2,
            color: ThemeMode==ThemeMode.dark?Colors.white:Colors.grey,

          ),
        ),
        itemCount: CategoryArtecles.length);
  }
}
