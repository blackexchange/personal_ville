import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:personal_ville/app/modules/home/components/item/item_widget.dart';
import 'package:personal_ville/app/modules/home/home_module.dart';
import 'package:personal_ville/app/shared/services/models/numerologia_model.dart';
import 'home_controller.dart';
import 'package:intl/intl.dart';



class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Números Pessoais"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //use 'controller' variable to access controller
  final controller = HomeModule.to.bloc<HomeController>();

  final DateFormat formatter = DateFormat('dd/MM/yyyy');

  _showDialog([NumerologiaModel model]) {
    model = model ?? NumerologiaModel();

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Nova Pessoa"),
            content: Column(
              children: <Widget>[
                Text("Nome:"),

                TextField(
                  maxLines: 1,
                  onChanged: (v) {
                    model.nome = v.toUpperCase();
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                InkWell(
                  child: Icon(Icons.calendar_today),
                  onTap: (){
                    showDatePicker(context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1916), lastDate: DateTime.now())
                        .then((value) =>
                    model.nascimento = formatter.format(value));
                  },
                )

              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text("Salvar"),
                onPressed: () {
                  controller.add(model);
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (_, index) {
              NumerologiaModel model = controller.list[index];
              return ItemWidget(
                model: model,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person),
        onPressed: () {
          _showDialog();
        },
      ),
    );
  }
}
