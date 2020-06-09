import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  static const methodPlugin = const MethodChannel('com.test/test');

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: IconButton(
                icon: Icon(Icons.language),
                tooltip: 'Navigation menu',
                onPressed: _handlerTap,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handlerTap() async {
    String result = await methodPlugin.invokeMethod('native_call');
    print("result : " + result);
  }
}
