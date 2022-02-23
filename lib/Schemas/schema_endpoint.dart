import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo_app/util/url.dart';

class endPoint {
  ValueNotifier<GraphQLClient> getClient(String token) {
    ValueNotifier<GraphQLClient> _client = ValueNotifier(
      GraphQLClient(
        link: HttpLink(endpointUrl, defaultHeaders: {}),
        cache: GraphQLCache(
          store: HiveStore(),
        ),
      ),
    );
    return _client;
  }
}
