import 'package:flutter/material.dart';
import 'package:navegacao_paginas/widgets/custom_button_widget.dart';
//import 'package:navegacao_paginas/two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disable: false,
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/twoPage', arguments: 'teste')
                .then((value) => print(value));
          },
          title: 'Ir para Segunda Page',
        ),
      ),
    );
  }
}
