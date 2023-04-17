import 'package:audioplayers/audioplayers.dart';

import 'Audio.dart';

class AudioHandler {
  final player = AudioPlayer();
  final List<Audio> _audioList = [];

  void addAudio(Audio audio) {
    _audioList.add(audio);
  }

  void playAll() async {
    int i = 0;
    playIndex(i++);
    player.onPlayerComplete.listen((event) async {
      if (i < _audioList.length) {
        playIndex(i++);
      }
    });
  }

  void playIndex(int index) async {
    await player.setSourceAsset(_audioList[index].path.substring(7));
    await player.resume();
  }

  void clearQueue() {
    _audioList.clear();
  }
}
