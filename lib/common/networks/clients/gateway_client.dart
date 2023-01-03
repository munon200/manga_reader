import 'package:dio/dio.dart';
import 'package:manga_reader/common/networks/network_creator.dart';

class GatewayClient {
  Dio client = NetworkCreator.create(
    baseUrl: 'http://google.com',
  );
}
