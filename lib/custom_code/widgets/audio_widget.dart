// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';

class AudioWidget extends StatefulWidget {
  const AudioWidget({
    super.key,
    this.width,
    this.height,
    required this.session,
  });

  final double? width;
  final double? height;
  final SessionStruct session;

  @override
  State<AudioWidget> createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> {
  late AudioPlayer player = AudioPlayer();
  late bool isFileNotExist;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);

    definePath();
  }

  void definePath() async {
    isFileNotExist = await checkFileExistence(widget.session);

    // Получаем директорию для сохранения файла
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDocDir.path}/${await defineTrack(widget.session)}';

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (isFileNotExist) {
        print('play from network');
        await player.setSource(UrlSource(widget.session.audioTrack));
      } else {
        print('play from file sistem');
        await player.setSource(DeviceFileSource(filePath));
      }
    });
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: PlayerWidget(player: player),
    );
  }
}

// The PlayerWidget is a copy of "/lib/components/player_widget.dart".
//#region PlayerWidget

class PlayerWidget extends StatefulWidget {
  final AudioPlayer player;

  const PlayerWidget({
    required this.player,
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _PlayerWidgetState();
  }
}

class _PlayerWidgetState extends State<PlayerWidget> {
  PlayerState? _playerState;
  Duration? _duration;
  Duration? _position;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  bool get _isPlaying => _playerState == PlayerState.playing;

  bool get _isPaused => _playerState == PlayerState.paused;

  String get _durationText => _duration?.toString().split('.').first ?? '';

  String get _positionText => _position?.toString().split('.').first ?? '';

  AudioPlayer get player => widget.player;

  @override
  void initState() {
    super.initState();
    // Use initial values from player
    _playerState = player.state;
    player.getDuration().then(
          (value) => setState(() {
            _duration = value;
          }),
        );
    player.getCurrentPosition().then(
          (value) => setState(() {
            _position = value;
          }),
        );
    _initStreams();
  }

  @override
  void setState(VoidCallback fn) {
    // Subscriptions only can be closed asynchronously,
    // therefore events can occur after widget has been disposed.
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FlutterFlowTheme FFTheme = FlutterFlowTheme.of(context);

    TextStyle fontStyle = FFTheme.titleMedium.override(
      fontFamily: FFTheme.titleMediumFamily,
      letterSpacing: 0.0,
      lineHeight: 1.3,
      useGoogleFonts:
          GoogleFonts.asMap().containsKey(FFTheme.titleMediumFamily),
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: FFTheme.darkGrey,
          style: BorderStyle.solid,
        ),
        color: FFTheme.lightGrey,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Material(
                elevation: 5, // Устанавливаем elevation для тени
                shape: const CircleBorder(), // Устанавливаем форму круга
                child: Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: FFTheme.darkGrey,
                  ),
                  child: IconButton(
                    key: const Key('play_pause_button'),
                    onPressed: _isPlaying ? _pause : _play,
                    iconSize: 48.0,
                    icon: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      color: FFTheme.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Slider(
            activeColor: FFTheme.gold,
            inactiveColor: FFTheme.black,
            thumbColor: FFTheme.tertiary,
            onChanged: (value) {
              final duration = _duration;
              if (duration == null) {
                return;
              }
              final position = value * duration.inMilliseconds;
              player.seek(Duration(milliseconds: position.round()));
            },
            value: (_position != null &&
                    _duration != null &&
                    _position!.inMilliseconds > 0 &&
                    _position!.inMilliseconds < _duration!.inMilliseconds)
                ? _position!.inMilliseconds / _duration!.inMilliseconds
                : 0.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width *
                0.8, // Устанавливаем ширину на 80% от ширины экрана
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _position != null ? _positionText : '0:00',
                  style: fontStyle,
                ),
                const SizedBox(width: 8),
                Text(
                  _duration != null ? _durationText : '0:00',
                  style: fontStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _initStreams() {
    _durationSubscription = player.onDurationChanged.listen((duration) {
      setState(() => _duration = duration);
    });

    _positionSubscription = player.onPositionChanged.listen(
      (p) => setState(() => _position = p),
    );

    _playerCompleteSubscription = player.onPlayerComplete.listen((event) {
      setState(() {
        _playerState = PlayerState.stopped;
        _position = Duration.zero;
      });
    });

    _playerStateChangeSubscription =
        player.onPlayerStateChanged.listen((state) {
      setState(() {
        _playerState = state;
      });
    });
  }

  Future<void> _play() async {
    await player.resume();
    setState(() => _playerState = PlayerState.playing);
  }

  Future<void> _pause() async {
    await player.pause();
    setState(() => _playerState = PlayerState.paused);
  }

  Future<void> _stop() async {
    await player.stop();
    setState(() {
      _playerState = PlayerState.stopped;
      _position = Duration.zero;
    });
  }
}
