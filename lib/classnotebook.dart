import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class notebook{

  Future<Database> contactdata() async {
// Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE Test (ID INTEGER PRIMARY KEY autoincrement, NAME TEXT, EMAIL TEXT)');
        });

return database;
  }

  Future<void> insert(db, name, email) async {

    String ss="insert into Test (NAME,EMAIL) values ('$name', $email)";
    int a=await db.rawInsert(ss);
    print(a);
  }









}