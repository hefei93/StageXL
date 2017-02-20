/// The sound classes make it very easy to play audio even if a browser
/// does not support the latest and greatest underlying audio API.
///
/// Since browsers do support different audio codecs, the library will also
/// load the correct sample for the browser automatically. Store your audio
/// samples in the mp3, ogg and ac3 format and the library will load the
/// sample which matches your browser.
///
/// Example:
///
///     // Load the audio sample with the ResourceManager. The mp3-extension
///     // will be replaced according to the capabilities of your browser.
///
///     var resourceManager = new ResourceManager();
///     resourceManager.addSound("bingo", "bingo.mp3");
///
///     resourceManager.load().then((_) {
///       // play the bingo sample
///       resourceManager.getSound("bingo").play();
///     });
///
library stagexl.media;

import 'dart:async';
import 'dart:html' as html;
import 'dart:html' show VideoElement;

import 'errors.dart';
import 'internal/video_loader.dart';

export 'media/audio.dart' hide implGetAudioElementMixer;

part 'media/video.dart';
part 'media/video_load_options.dart';
