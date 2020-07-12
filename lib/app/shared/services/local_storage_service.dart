import 'dart:async';
import 'package:hive/hive.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:personal_ville/app/shared/services/models/numerologia_model.dart';

class LocalStorageService extends Disposable {
  Completer<Box> completer = Completer<Box>();

  LocalStorageService(){
    _initDB();
  }

  _initDB() async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    final box = await Hive.openBox("servicos");

    //box.deleteFromDisk();
    if (!completer.isCompleted)
      completer.complete(box);
  }
  
  Future <List<NumerologiaModel>> getAll() async{
    final box = await completer.future;
    return box.values.map((e) => NumerologiaModel.fromJson(e)).toList();
  }

  Future<NumerologiaModel> add (NumerologiaModel model) async{
    final box = await completer.future;
    model.id = box.values.length;
    await box.put (box.values.length, model.toJson());
    return model;
  }

  Future<NumerologiaModel> update (NumerologiaModel model) async{
    final box = await completer.future;
    await box.put (model.id, model.toJson());
     return model;
  }

  remove (int id) async{
    final box = await completer.future;
    await box.delete(id);
  }

  //dispose will be called automatically
  @override
  void dispose() async {
    final box = await completer.future;
    box.close();
  }
}
