class Database {
  static Database? _instance;

  Database._internal();

  static Database getInstance() {
    _instance ??= Database._internal();
    return _instance!;
  }

  void connect() {
    print("Connected to the database");
  }
}

class Client {
  String testSingleton() {
    Database db1 = Database.getInstance();
    Database db2 = Database.getInstance();

    String message = "";

    if (db1 == db2) {
      message = "Singleton works! Both instances are the same.";
      print("Singleton works! Both instances are the same.");
    } else {
      message = "Singleton failed! Instances are different.";
      print("Singleton failed! Instances are different.");
    }

    return message;
  }
}
