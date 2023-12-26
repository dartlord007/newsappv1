


import 'package:newsappv1/models/SourceModel.dart';

class Article {
  SourceModel? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: SourceModel.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String,
    );
  }
}

//In Dart, a factory constructor is a special type of constructor that is responsible for creating and returning an instance of a class. Unlike a regular constructor, a factory constructor doesn't necessarily have to create a new instance every time it's called. It can decide to return an existing instance or a different subtype based on certain conditions.

//This factory constructor is particularly useful when you have complex logic involved in creating an instance, or if you want to reuse existing instances based on certain conditions, rather than creating a new one every time. In this case, it's used for creating an Article instance from a JSON map.

//In Dart, the as keyword is used for type casting, allowing you to explicitly specify the type of an expression. It's commonly used when you want to treat an object as a specific type, and you want to inform the Dart analyzer about that type.