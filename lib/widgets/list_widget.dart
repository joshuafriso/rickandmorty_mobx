import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:rickandmorty_mobx/controllers/home_controller.dart';
import 'package:rickandmorty_mobx/pages/details_page.dart';
import 'package:rickandmorty_mobx/widgets/progress_widget.dart';

class ListWidget extends StatelessWidget {
  final ScrollController _scrollController;

  ListWidget(this._scrollController);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
    return Observer(
      builder: (BuildContext context) => ListView.builder(
        controller: _scrollController,
        itemCount: controller.itens.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == controller.itens.length) {
            return ProgressWidget();
          } else
            return GestureDetector(
              child: ListTile(
                title: Text(controller.itens[index]["name"]),
                subtitle: Text('Status: ${controller.itens[index]["status"]}'),
                leading: Image.network(controller.itens[index]["image"]),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(controller.itens[index])));
              },
            );
        },
      ),
    );
  }
}
