import 'package:manga_reader/common/networks/data_response.dart';

typedef DataResponseList<T> = Future<DataResponse<List<T>>>;
typedef DataResponseMap<K, V> = Future<DataResponse<Map<K, V>>>;
