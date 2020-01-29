import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmorty_mobx/controllers/home_controller.dart';
import 'package:rickandmorty_mobx/widgets/list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller;
  ScrollController _scrollController = ScrollController();

  @override
  void didChangeDependencies() {
    _controller = Provider.of<HomeController>(context);
    _controller.getData();
    super.didChangeDependencies();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) _controller.getData();
    });
  }
 
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personagens"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListWidget(_scrollController),
    );
  }
}