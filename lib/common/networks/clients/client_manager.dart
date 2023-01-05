import 'package:dio/dio.dart';
import 'package:manga_reader/common/networks/network_creator.dart';

class ClientManager {
  static final Dio gateway = NetworkCreator.create(
    baseUrl: 'http://google.com',
  );
}
