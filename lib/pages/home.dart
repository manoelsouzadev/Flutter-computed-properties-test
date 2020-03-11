import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_test/controllers/controller.dart';

class HomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Observer(builder: (_) {
            //   return Text(
            //     '${ controller.counter }',
            //     style: Theme.of(context).textTheme.display1,
            //   );
            // }),
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.mudarNome,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.mudarSobrenome,
            ),
            SizedBox(
              height: 20,
            ),
            Observer(builder: (_){
              return Text('${controller.nomeCompleto}');
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {
        //   controller.increment();
        // },
        child: Icon(Icons.add),
      ),
    );
  }
}
