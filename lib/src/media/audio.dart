library stagexl.media.audio;

import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;
import 'dart:html' show HttpRequest;
import 'dart:math';
import 'dart:typed_data';
import 'dart:web_audio';

import '../errors.dart';
import '../events.dart';
import '../internal/audio_loader.dart';
import 'audio_fallback.dart' deferred as fallback;

part 'audio_element_mixer.dart';
part 'implementation/web_audio_api_mixer.dart';
part 'implementation/web_audio_api_sound.dart';
part 'implementation/web_audio_api_sound_channel.dart';
part 'sound.dart';
part 'sound_channel.dart';
part 'sound_engine.dart';
part 'sound_load_options.dart';
part 'sound_mixer.dart';
part 'sound_transform.dart';
