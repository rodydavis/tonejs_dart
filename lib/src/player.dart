// part of '../tonejs_dart.dart';

// @JS()
// class _Player {
//   // final String url;
//   // final String? fadeIn;
//   // final String? fadeOut;
//   // final String? loopStart;
//   // final String? loopEnd;
//   // final double? playbackRate;
//   // final double? volume;
//   // final bool? autostart;
//   // final bool? loop;
//   // final bool? reverse;
//   // final bool? mute;
//   // final void Function()? onload;
//   // final void Function(String source)? onStop;

//   // static JsObject? _instance;

//   // Player toDestination() {
//   //   _instance!.callMethod('toDestination');
//   //   return this;
//   // }
//   external Player toDestination();
//   external Future<void> start();
//   external Future<void> stop();
// }

// @JS()
// @anonymous
// class M {
//   external Object get bar;
// }

// @JS()
// external M get obj;

// class Player {
//   Player(String url) {
//     eval('''
//       window.obj = {
//         'bar': function() { return new.target; },
//       }
//   ''');
//     print(obj.bar);
//     instance = callConstructor(obj.bar, [url]);
//     print(instance);
//   }
//   static late _Player instance;
//   Player toDestination() => instance.toDestination();
//   Future<void> start() => instance.start();
//   Future<void> stop() => instance.stop();
// }
