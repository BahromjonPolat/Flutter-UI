import 'package:flutter/material.dart';

class SuperMarioPlayGamePage extends StatefulWidget {
  @override
  _SuperMarioPlayGamePageState createState() => _SuperMarioPlayGamePageState();
}

class _SuperMarioPlayGamePageState extends State<SuperMarioPlayGamePage> {
  Size _size;
  double _xMario = 0.0;
  double _yMario = 1.0;
  double _xBackground = 1.0;
  bool _isJump = false;
  bool _isUp = false;
  bool _buttonPressed = false;
  bool _loopActive = false;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: _getBody(),
    );
  }

  _getBody() => Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: _getMario(),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green[800],
                  child: _getButtons(),
                )),
          ],
        ),
      );

  _getMario() => Stack(
        alignment: Alignment(_xBackground, 1.0),
        children: [
          Container(
            alignment: Alignment(_xMario, _yMario),
            width: _size.width,
            color: Colors.blue,
            child: Container(
              height: 56.0,
              width: 56.0,
              child: Image.asset("assets/images/mario/mario.png"),
            ),
          ),
          Container(
            width: 45,
            height: 45,
            child: Image.asset("assets/images/mario/mario_wall.png"),
          )
        ],
      );

  _getButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              /// Orqaga yurish uchun button
              Listener(
                onPointerDown: (details) {
                  _buttonPressed = true;
                  _increaseCounterWhilePressed(false);
                },
                onPointerUp: (details) {
                  _buttonPressed = false;
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 32.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.black38),
                ),
              ),

              /// Oldinga yurish uchun button
              Listener(
                onPointerDown: (details) {
                  _buttonPressed = true;
                  _increaseCounterWhilePressed(true);
                },
                onPointerUp: (details) {
                  _buttonPressed = false;
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.white,
                    size: 32.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.black38),
                ),
              ),
            ],
          ),

          /// Hisobni ko`rsatish uchun TEXT
          _setCounter(),

          /// Marioni sakratish uchun Button
          ElevatedButton(
            onPressed: _onJumpPressed,
            child: Icon(
              Icons.arrow_circle_up_outlined,
              size: 48.0,
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.0)),
          ),
        ],
      );

  ///
  _onJumpPressed() async {
    for (int i = 0; i < 100; i++) {
      await Future.delayed(Duration(milliseconds: 5), () {
        setState(() {
          if (_isUp) {
            _yMario -= 0.02;
            if (_yMario <= 0.3) _isUp = false;
          } else if (!_isUp) {
            _yMario += 0.02;
            if (_yMario >= 1.0) {
              _isUp = true;
              _isJump = !_isJump;
            }
          }
        });
      });

      /// Agar Marioning pozitsiyasi 0.0 ga teng bo`lsa va harakatlanmayotgan
      /// bo`lsa isJump`ning qiymatini true qiladi va loop`ni sindiradi.
      if (!_isJump) {
        _isJump = !_isJump;
        break;
      }
    }
  }

  /// To`siqdan sakrab o`tganida hisobni oshirish uchun
  _setCounter() {
    if (_xBackground < 0.0 && _xBackground > -0.03) _counter++;
    return Text(
      "$_counter",
      style: TextStyle(
          color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }

  /// Button bosib turilganida ishlaydi.
  void _increaseCounterWhilePressed(bool isForward) async {
    // make sure that only one loop is active
    if (_loopActive) return;

    _loopActive = true;

    while (_buttonPressed) {
      // do your thing
      setState(() {
        if (isForward) {
          if (!(_xMario >= 0.0)) {
            _xMario += 0.03;
          } else {
            _xBackground -= 0.03;
            if (_xBackground <= -1.3) _xBackground = 1.3;
          }
        } else {
          if (!(_xMario <= -1.0)) _xMario -= 0.03;
        }
      });

      // wait a bit
      await Future.delayed(Duration(milliseconds: 40));
    }

    _loopActive = false;
  }
}
