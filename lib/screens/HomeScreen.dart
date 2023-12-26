
import 'package:flutter/material.dart';
import 'package:newsappv1/ApiServices.dart';
import 'package:newsappv1/models/ArticleModel.dart';
import 'package:newsappv1/widgets/cutomListTile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ApiService client = ApiService();
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: client.getArticle(), 
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {  

          if(snapshot.hasData){

            // return const Center(child: Text("Success!"));

            List<Article> articles = snapshot.data as List<Article>;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  customListTile(articles[index],context)
            );
          }

          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [CircularProgressIndicator(),
                SizedBox(height: 20,),
                Text("No News yet!")
                ],
              ),
            ),
          );
        },)
    );
  }
}

