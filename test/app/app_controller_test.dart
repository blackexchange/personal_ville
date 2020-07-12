import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:personal_ville/app/app_controller.dart';
import 'package:personal_ville/app/app_module.dart';

void main() {
  initModule(AppModule());

  AppController app;


  const Map tabela = {
    "1": {"aijqy"},
    "2": {"bkr`'àìäï"},
    "3": {"cgls~áí"},
    "4": {"dmtã"},
    "5": {"ehn"},
    "6": {"uvxwç"},
    "7": {"ozé"},
    "8": {"fpâîúñ"},
    "9": {"ó"},
    "10":{"èëõ"},
    "12":{"êùü"},
    "13":{"û"},
    "14":{"öò"},
    "15":{"ô"},
    "vogais": {"áàâãäéèêëíïîìóôõöúüùûaeiouy"},
    "consoantes":{"bcdfghjklmnpqrstvwxzñç"}
   };


  RegExp exp = new RegExp(r"[\S]");
  String str = "dominique moreira nevile".toLowerCase();
  Iterable<Match> matches = exp.allMatches(str);

  matches = exp.allMatches(str);
  int sum = 0;
  int vogais = 0;
  int consoantes = 0;
/*
  for (Match m in matches) {
    var aux = m.group(0);
    for (int i = 1 ; i <= tabela.length ; i++){
      if (i<=14) {
        String tab = tabela["$i"].toString();
        if (tab.contains(aux)) {
          sum += i;
          if (tabela["vogais"].toString().contains(aux)){
            vogais += i;
          }else if (tabela["consoantes"].toString().contains(aux)){
            consoantes += i;
          }
          break;
        }
      }
    }
  }
  print ("Todas as letras: $sum");
  print ("Todas as vogais: $vogais");
  print ("Todas as consoantes: $consoantes");
//  print (todos);

  var nascimento = "29/11/2020";
  var data = nascimento.split("/");

  int sumDia = 0;
  int sumMes = 0;
  int sumAno = 0;

  var dia = data[0];
  var mes = data[1];
  var ano = data[2];

  while (dia.length > 1 && dia !="11" && dia !="22") {
    sumDia = 0;
    for (int i = 0; i < dia.length; i++) {
      sumDia += int.parse(dia.substring(i, i + 1));
    }
    dia = sumDia.toString();
  }

  while (mes.length > 1 && mes !="11" && ano !="22") {
    sumMes = 0;
    for (int i = 0 ; i < mes.length ; i++){
      sumMes += int.parse(mes.substring(i,i+1));
    }
    mes = sumMes.toString();
  }

  while (ano.length > 1 && ano !="11" && ano !="22") {
    sumAno = 0;
    for (int i = 0; i < ano.length; i++) {
      sumAno += int.parse(ano.substring(i, i + 1));
    }
    ano = sumAno.toString();
  }


  var psiquico = dia+mes+ano;
  int sumData = 0;
  while (psiquico.length > 1 && psiquico !="11" && psiquico !="22") {
  //  print ("Reduzindo $psiquico");
    sumData = 0;
    for (int i = 0; i < psiquico.length; i++) {
      sumData += int.parse(psiquico.substring(i, i + 1));
    }
    psiquico = sumData.toString();
  }
*/
  int sumAux;
  var numeros = ["11", "123"];
  print ("--------------------");

  for (int i = 0; i < numeros.length ; i++) {
    var cadeia = numeros[i];
    while (cadeia.length > 1 && cadeia !="11" && cadeia !="22") {

      sumAux = 0;
      for (int a = 0; a < cadeia.length ; a++) {
        sumAux += int.parse(cadeia.substring(a, a + 1));
      }
      cadeia = sumAux.toString();
    }
    numeros[i] = cadeia;

  }

  var tend=[];
  //tendencia oculta
  exp = new RegExp(r"[1|2|3|4|5|6|7|8|8]{3}");
  matches = exp.allMatches("111290890888");
  for (Match m in matches) {
    tend.add(m.group(0).substring(0,1));
    // model.tendenciasOcultas.add(aux);
  }
List<String >a =[];

  a.add(("value"));

  print(a);
//  print ("Soma da data $nascimento");
//  print ("Dia: $dia");
//  print ("Mês: $mes");
//  print ("Ano: $ano");
  //print ("Psiquico: ${numeros}");


    setUp(() {
    app = AppModule.to.get<AppController>();
  });

  group('AppController Test', () {
    //  test("First Test", () {
    //    expect(app, isInstanceOf<AppController>());
    //  });

    //  test("Set Value", () {
    //    expect(app.value, equals(0));
    //    app.increment();
    //    expect(app.value, equals(1));
    //  });
  });
}
