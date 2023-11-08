import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final faker = Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Tile'),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return chatItem(
              imageUrl: "https://picsum.photos/id/$index/200/200",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
          // children: [
          //   chatItem(
          //     imageUrl: "https://picsum.photos/id/1/200/200",
          //     title: faker.person.name(),
          //     subtitle: faker.lorem.sentence(),
          //   ),
          //   chatItem(
          //     imageUrl: "https://picsum.photos/id/2/200/200",
          //     title: faker.person.name(),
          //     subtitle: faker.lorem.sentence(),
          //   ),
          //   chatItem(
          //     imageUrl: "https://picsum.photos/id/3/200/200",
          //     title: faker.person.name(),
          //     subtitle: faker.lorem.sentence(),
          //   ),
          // ],
        ),
      ),
    );
  }
}

class chatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  chatItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text('10.20'),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}