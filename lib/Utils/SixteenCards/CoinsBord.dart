import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game01/Provider/SixteenCardProvider.dart';
import 'package:provider/provider.dart';
class CoinsBord extends StatelessWidget {
  const CoinsBord ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SixteenCardProvider>(builder: (context,sixteenCardProvider,child){
      return Row(
        children: [
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setSelectedCoinValue(1);
            },
            child: RotatingCoin(coinValue: 1),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setSelectedCoinValue(2);
            },
            child: RotatingCoin(coinValue: 2),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setSelectedCoinValue(5);
            },
            child: RotatingCoin(coinValue: 5),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setSelectedCoinValue(10);
            },
            child: RotatingCoin(coinValue: 10),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setSelectedCoinValue(50);
            },
            child: RotatingCoin(coinValue: 50),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setSelectedCoinValue(100);
            },
            child: RotatingCoin(coinValue: 100),
          ),
          GestureDetector(
            onTap: (){
              sixteenCardProvider.setSelectedCoinValue(500);
            },
            child: RotatingCoin(coinValue: 500),
          ),
        ],
      );
    });
  }
}


class RotatingCoin extends StatefulWidget {
  final int coinValue;
  RotatingCoin({Key? key, required this.coinValue}) : super(key: key);

  @override
  State<RotatingCoin> createState() => _RotatingCoinState();
}

class _RotatingCoinState extends State<RotatingCoin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Add a listener to the controller to rebuild the widget when the animation changes
    _controller.addListener(() {
      setState(() {});
    });

    // Start or stop the animation based on the comparison
    if (widget.coinValue == context.read<SixteenCardProvider>().selectedCoinValue) {
      _controller.repeat();
    } else {
      _controller.stop();
    }
  }

  @override
  void didUpdateWidget(RotatingCoin oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Start or stop the animation based on the comparison
    if (widget.coinValue == context.read<SixteenCardProvider>().selectedCoinValue) {
      _controller.repeat();
    } else {
      _controller.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SixteenCardProvider>(
      builder: (context, sixteenCardProvider, child) {
        return Stack(
          alignment: Alignment.center, // Set the alignment of the Stack to center
          children: [
            RotationTransition(
              turns: _controller,
              child: Container(
                height: 80.sp,
                width: 80.sp,
                margin: EdgeInsets.symmetric(horizontal: 6.sp),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("Assets/GameCoins/GameCoinBackground${widget.coinValue}.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image(
                height: 30.sp,
                width: 30.sp,
                image: AssetImage("Assets/GameCoins/GameCoinValue${widget.coinValue}.png"),
              ),
            ),
          ],
        );
      },
    );
  }
}

