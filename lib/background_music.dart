import 'package:audioplayers/audioplayers.dart';
import 'dart:developer' as developer;

class BackgroundMusic {
  static final AudioPlayer _player = AudioPlayer();
  static bool _started = false;

  static Future<void> ensurePlaying() async {
    if (_started) {
      return;
    }
    _started = true;
    try {
      await _player.setReleaseMode(ReleaseMode.loop);
      await _player.setVolume(0.15);
      //developer.log('Starting background music');
      await _player.play(AssetSource('audio/background.mp3'));
      //developer.log('Background music started');
    } catch (e) {
      developer.log('Background music error: $e');
    }
  }

  static Future<void> toggle() async {
    final state = _player.state;
    if (state == PlayerState.playing) {
      await _player.pause();
      //developer.log('Music paused');
    } else {
      await _player.resume();
      //developer.log('Music resumed');
    }
  }
}
