import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SixteenCardProvider with ChangeNotifier {
  DateTime now = DateTime.now();
  List<int> _betAmount = List.filled(16, 0);
  List<int> _repeatBetAmount = List.filled(16, 0);
  int _selectedCoinValue = 0;
  int _totalBetAmount = 0;
  late String _currentDate = DateFormat('dd.MM.yyyy').format(now);

  get betAmount => _betAmount;
  get selectedCoinValue => _selectedCoinValue;
  get repeatBetAmount => _repeatBetAmount;
  get totalBetAmount => _totalBetAmount;
  get currentDate => _currentDate;

  void setSelectedCoinValue(int val){
    _selectedCoinValue = val;
    notifyListeners();
  }

  // Getter for individual element
  int getBetAmount(int index) {
    return _betAmount[index];
  }

  // Setter for individual element
  void setCoinValueInIndex(int index) {
    _betAmount[index] = _betAmount[index] + _selectedCoinValue;
    getTotalBetAmount();
    notifyListeners(); // Notify listeners when the data changes
  }

  // Setter to change every index at once
  void setAllBetAmount(int value) {
    _betAmount = List.filled(16, value);
    getTotalBetAmount();
    notifyListeners();
  }
  void doubleBetAmount() {
    _betAmount = _betAmount.map((amount) => amount * 2).toList();
    getTotalBetAmount();
    notifyListeners();
  }
  void placeBetAmount() {
    _repeatBetAmount = _betAmount;
    setAllBetAmount(0);
    getTotalBetAmount();
    notifyListeners();
  }
  void setRepeatBet() {
    _betAmount = _repeatBetAmount;
    getTotalBetAmount();
    notifyListeners();
  }
  // Function to calculate the total of _betAmount
  void getTotalBetAmount() {
    _totalBetAmount =  _betAmount.reduce((sum, amount) => sum + amount);
    notifyListeners();
  }

  // New method to set random picks
  void setRandomPick(int n) {
    setAllBetAmount(0);
    Random random = Random();

    // Ensure n is within the valid range (0 to 15)
    n = max(0, min(15, n));

    // Create a list of indices from 0 to 15
    List<int> indices = List.generate(16, (index) => index);

    // Shuffle the list of indices
    indices.shuffle(random);

    // Call setCoinValueInIndex on the first n indices
    for (int i = 0; i < n; i++) {
      int index = indices[i];
      setCoinValueInIndex(index);
    }
    notifyListeners();
  }

  void setRowPick(int n) {
    setAllBetAmount(0);
    for (int i = (0+n); i <= (3+n); i++) {
      setCoinValueInIndex(i);
    }
    notifyListeners();
  }

  void setColumnPick(int n) {
    setAllBetAmount(0);
    int k = 0+n;
    for (int i = 0; i <= 3; i++) {
      setCoinValueInIndex(k);
      k = k+4;
    }
    notifyListeners();
  }
}

