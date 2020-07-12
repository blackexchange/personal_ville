import 'package:flutter/material.dart';
import 'package:personal_ville/app/shared/services/models/numerologia_model.dart';


class ItemWidget extends StatelessWidget {
  final NumerologiaModel model;

  const ItemWidget ({Key key, this.model}):super();


  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text( model.nome ?? "" ),
      subtitle: Text(
          "Nascimento: " +model.nascimento +"\n"+
          "Psíquico: " + model.psiquico+ ", " +
          "Motivação: " + model.motivacao  +", " +
          "Impressão: " + model.impressao  +", " +
          "Expressãao: " + model.expressao +", " +
          "Destino: " + model.destino  +", " +
          "Missão: " + model.missao+", " +
          "Dívidas Cármicas: " + model.dividasCarmicas.toString()
      , style: TextStyle(fontSize: 18.0),),

    );
  }


}
