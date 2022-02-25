import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo_app/util/url.dart';

class EndPoint {
  ValueNotifier<GraphQLClient> getClient() {
    ValueNotifier<GraphQLClient> _client = ValueNotifier( 
      GraphQLClient(
        link: HttpLink(endpointUrl),
        cache: GraphQLCache(
          store: HiveStore(),
        ),
      ),
    );
    return _client;
  }
}
