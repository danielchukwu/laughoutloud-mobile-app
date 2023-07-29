import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_outputing_lists_p1/constraints.dart';
import 'package:flutter_outputing_lists_p1/screens/quotes/components/JokeCard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JokesScreen extends StatefulWidget {
  const JokesScreen({Key? key}) : super(key: key);

  @override
  State<JokesScreen> createState() => _JokesScreenState();
}

class _JokesScreenState extends State<JokesScreen> {
  List<dynamic> data = [];

  Future<void> getData() async {
    var response = await http
        .get(Uri.parse('https://official-joke-api.appspot.com/random_ten'));
    print('response: $response');
    var result = await json.decode(response.body);
    print('result: $result');

    setState(() {
      data = result;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Text('ComeLaugh'),
        backgroundColor: KBlackBG,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            var joke = data[index];
            return new JokeCard(data: joke);
          },
        ),
      ),
      backgroundColor: KBlackBG,
    );
  }
}

