
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_14/pctc_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

import 'app.dart';
void main() => runApp(
  ChangeNotifierProvider(
      create: (_)=>CountProvider(),
      child: MyAPP()),
);