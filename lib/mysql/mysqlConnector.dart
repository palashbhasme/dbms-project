import 'package:mysql_client/mysql_client.dart';

class MySQLConnector {
  static String host = '10.0.2.2';
  static int port = 3306;
  static String userName = 'root';
  static String password = 'password@123';
  static String db = 'bakery';

  static Future<MySQLConnection> getConnection() async {
    final conn = await MySQLConnection.createConnection(
      host: host,
      port: port,
      userName: userName,
      password: password,
    );

    await conn.connect();
    print('Connection success');
    return conn;
  }
}
