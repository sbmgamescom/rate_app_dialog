import 'package:flutter/material.dart';
import 'package:rate_app_dialog/src/config.dart';
import 'package:lottie/lottie.dart';

class AppRating {
  AppRating._();
  static final instance = AppRating._();

  late AppRatingConfig _config;

  Future<void> initialize({required AppRatingConfig config}) async {
    _config = config;
  }

  Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return _AppDialog(_config);
      },
    );
  }
}

class _AppDialog extends StatelessWidget {
  const _AppDialog(this.config);
  final AppRatingConfig config;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Dialog(
      child: Container(
        height: size.height * .35,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [Color(0xffe74645), Color(0xfffb7756)],
            stops: [0.25, 0.75],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Stack(
            children: [
              Column(
                children: [
                  Text(
                    'Вам понравилось это приложение?',
                    style: config.titleStyle,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: _ActionsPanel(),
                  )
                ],
              ),
              Align(
                  alignment: Alignment.center,
                  child: Lottie.asset(
                      'packages/rate_app_dialog/assets/star.json')),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionsPanel extends StatelessWidget {
  const _ActionsPanel();

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.black87, fontSize: 19, fontWeight: FontWeight.bold);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // backgroundColor: const Color(0xffe74645),
                ),
            onPressed: () {},
            child: const Text(
              'Нет',
              style: textStyle,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff58b368),
            ),
            onPressed: () {},
            child: const Text(
              'ДА!',
              style: textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
