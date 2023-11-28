import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.of(context).pop('retorno');
            }
          },
          child: Text('Voltar para Page $args'),
        ),
      ),
    );
  }
}
