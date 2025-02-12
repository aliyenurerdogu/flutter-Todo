//bu dosya butun task lerin(todo , completed) tipi yerine gecicek. OOP ye yakın olsun diye boyle yaptık.boylece task olarak yazdıgımız string ifadeleri task constructor ile olusturulmus task tipindeki objeler olucak

class Task {
  Task({
    //task constructorı(objesi).ve değişkenler constructor içine baglanır. task objesinin içindeki bu parametreler alttakş final değişkenlere baglanmasını sagladık
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  final String title;
  final String description;
  final String isCompleted;
  //checkbox işlemleri iscompleted uzerinden yapılıcak.
}
