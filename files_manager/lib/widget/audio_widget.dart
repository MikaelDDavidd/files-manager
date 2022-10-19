import 'dart:convert';
import 'package:files_manager/models/midia_model.dart';
import 'package:files_manager/models/test_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AudioWidget extends StatelessWidget {
  AudioWidget({super.key});

  final List<Media> medias = [];

  /*final List<Map> media =
      List.generate(1000000, (index) => {"id": index, "name": "Product $index"})
          .toList();*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
              childAspectRatio: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: medias.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                heros[index].title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          }),
    );
  }
}
