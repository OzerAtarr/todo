import 'package:hive/hive.dart';

class ToDoDatbase {
  // create task list
  List toDoList = [];

  // Reference our box
  final _mybox = Hive.box('mybox');

  // Uygulama ilk kez açılıyorsa bu yöntemi çalıştır
  void createInitialData() {
    toDoList = [
      ['Odanı havalandır.', false],
      ['Egzersiz Yap.', false],
    ];
  }

  // önceki dataları yükle
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // Veritabanını güncelle
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
