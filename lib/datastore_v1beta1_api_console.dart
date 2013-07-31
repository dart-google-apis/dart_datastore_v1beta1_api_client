library datastore_v1beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_datastore_v1beta1_api/src/cloud_api_console.dart';

import "package:google_datastore_v1beta1_api/datastore_v1beta1_api_client.dart";

/** API for accessing Google Cloud Datastore. */
class Datastore extends Client with ConsoleClient {

  /** OAuth Scope2: View your email address */
  static const String USERINFO_EMAIL_SCOPE = "https://www.googleapis.com/auth/userinfo.email";

  final oauth2.OAuth2Console auth;

  Datastore([oauth2.OAuth2Console this.auth]);
}
