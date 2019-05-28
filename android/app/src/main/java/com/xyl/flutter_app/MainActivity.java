package com.xyl.flutter_app;

import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
//    setContentView(R.layout.activity_test);
  }
}
