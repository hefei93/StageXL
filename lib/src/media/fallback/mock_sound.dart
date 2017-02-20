import 'dart:async';

import '../audio.dart';
import 'mock_sound_channel.dart';

class MockSound extends Sound {

  MockSound._();

  //-------------------------------------------------------------------------------------------------
  //-------------------------------------------------------------------------------------------------

  static Future<Sound> load(String url, [SoundLoadOptions soundLoadOptions]) {
    return new Future<Sound>.value(new MockSound._());
  }

  static Future<Sound> loadDataUrl(String dataUrl, [SoundLoadOptions soundLoadOptions]) {
    return new Future<Sound>.value(new MockSound._());
  }

  //-------------------------------------------------------------------------------------------------
  //-------------------------------------------------------------------------------------------------

  @override
  SoundEngine get engine => SoundEngine.Mockup;

  @override
  num get length {
    // We could load the WAV-file, parse the header and get the correct length!
    return double.NAN;
  }

  @override
  SoundChannel play([
    bool loop = false, SoundTransform soundTransform]) {

    return new MockSoundChannel(this, 0, this.length, loop, soundTransform);
  }

  @override
  SoundChannel playSegment(num startTime, num duration, [
    bool loop = false, SoundTransform soundTransform]) {

    return new MockSoundChannel(this, startTime, duration, loop, soundTransform);
  }
}
