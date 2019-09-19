import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular/angular.dart';
import 'package:firebase_dart_ui/firebase_dart_ui.dart';
import 'package:firebase/firebase.dart' as fb;


import 'package:firebase/src/interop/firebase_interop.dart';

import "dart:html";

import 'package:js/js.dart';

import 'dart:js';

@Component(
  selector: 'my-app',
  styleUrls: ['package:angular_components/app_layout/layout.scss.css', 'app_component.css'],
  templateUrl: 'app_component.html',
  providers: const <dynamic>[materialProviders],
  directives: [
    routerDirectives,
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    MaterialTemporaryDrawerComponent,
    MaterialToggleComponent,
    MaterialListComponent,
    MaterialListItemComponent,
    MaterialFabComponent,
    MaterialButtonComponent,
    NgIf,
    FirebaseAuthUIComponent,
  ],
  exports: [RoutePaths, Routes]
)

class AppComponent {

  UIConfig _uiConfig;

  Future<Null> logout() async {
    await fb.auth().signOut();
    providerAccessToken = "";
  }


  // todo: We need to create a nicer wrapper for the sign in callbacks.
  PromiseJsImpl<void>  signInFailure(AuthUIError authUiError) {
    // nothing to do;
    return new PromiseJsImpl<void>( () => print("SignIn Failure"));
  }

  // Example SignInSuccess callback handler
  bool signInSuccess(fb.UserCredential authResult, String redirectUrl) {
    print("sign in  success. ProviderID =  ${authResult.credential.providerId}");
    print("Info= ${authResult.additionalUserInfo}");

    // returning false gets rid of the double page load (no need to redirect to /)
    return false;
  }

  /// Your Application must provide the UI configuration for the
  /// AuthUi widget. This is where you configure the providers and options.
  UIConfig getUIConfig() {
    if (_uiConfig == null) {
      var googleOptions = new CustomSignInOptions(
          provider: fb.GoogleAuthProvider.PROVIDER_ID,
          scopes: ['email', 'https://www.googleapis.com/auth/plus.login'],
          customParameters:
              new GoogleCustomParameters(prompt: 'select_account'));

      var callbacks = new Callbacks(
          uiShown: () => print("UI shown callback"),
          signInSuccessWithAuthResult: allowInterop(signInSuccess),
          signInFailure: signInFailure
      );


      _uiConfig = new UIConfig(
          signInSuccessUrl: '/',
          signInOptions: [
            googleOptions,
            fb.EmailAuthProvider.PROVIDER_ID,
          ],
          signInFlow: "redirect",
          //signInFlow: "popup",
          credentialHelper: ACCOUNT_CHOOSER,
          tosUrl: '/tos.html',
          callbacks: callbacks);
    }
    return _uiConfig;
  }

  bool isAuthenticated() => fb.auth().currentUser != null;
  String get userEmail => fb.auth().currentUser?.email;
  String get displayName => fb.auth().currentUser?.displayName;
  Map<String, dynamic> get userJson => fb.auth().currentUser?.toJson();

  // If the provider gave us an access token, we put it here.
  String providerAccessToken = "";

}
