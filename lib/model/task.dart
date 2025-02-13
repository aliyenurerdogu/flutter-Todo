//bu dosya butun task lerin(todo , completed) tipi yerine gecicek. OOP ye yakın olsun diye boyle yaptık.boylece task olarak yazdıgımız string ifadeleri task constructor ile olusturulmus task tipindeki objeler olucak

import 'package:flutter_todo/constants/tasktype.dart';

class Task {
  Task({
    //task constructorı(objesi).ve değişkenler constructor içine baglanır. task objesinin içindeki bu parametreler alttakş final değişkenlere baglanmasını sagladık
    required this.type,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  final TaskType type;
  final String title;
  final String description;
  bool isCompleted;
  //checkbox işlemleri iscompleted uzerinden yapılıcak.
}
