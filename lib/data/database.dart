import 'package:hive_flutter/hive_flutter.dart';

class TransferDatabase {
  List transfer = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    transfer = [
      ["2015051035", "500.000"],
    ];
  }

  void loadData() {
    transfer = _myBox.get("Kirim Uang");
  }

  void updateDatabase() {
    _myBox.put("Kirim Uang", transfer);
  }
}
