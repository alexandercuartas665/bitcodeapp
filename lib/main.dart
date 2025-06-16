import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://app.bitcode.com.co/Formularios/modulos/Login/LoginMobile.aspx')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },

        ),
      )
      ..loadRequest(Uri.parse('https://app.bitcode.com.co/Formularios/modulos/Login/LoginMobile.aspx'));
    */
    return MaterialApp(
      title: 'Bitcode',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
//      home: WebViewWidget(controller: controller),
      home: SafeArea(
        child: InAppWebView(
          initialOptions: InAppWebViewGroupOptions(
              ios: IOSInAppWebViewOptions(
                allowsBackForwardNavigationGestures: false,
              ),
              android: AndroidInAppWebViewOptions(
                supportMultipleWindows:false, // Bloquea gestos multitáctiles en Android
                builtInZoomControls: false, // Desactiva zoom con dos dedos
                displayZoomControls: false,
                overScrollMode: AndroidOverScrollMode.OVER_SCROLL_NEVER,

              ),
              crossPlatform: InAppWebViewOptions(
                supportZoom: false,
              )),
          initialUrlRequest: URLRequest(
              url: WebUri(
                  'https://app.bitcode.com.co/Formularios/modulos/Login/LoginMobile.aspx')),
        ),
      ),
    );
  }
}
