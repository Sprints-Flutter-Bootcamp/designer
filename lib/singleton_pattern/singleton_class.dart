class Database {
  static Database? _instance;

  Database._internal();

  static Database getInstance() {
    if (_instance == null) {
      _instance = Database._internal();
    }
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

    // for extra clarity for myself I printed the address of both instances :)
    print("Memory Address of db1: ${identityHashCode(db1)}");
    print("Memory Address of db2: ${identityHashCode(db2)}");

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
