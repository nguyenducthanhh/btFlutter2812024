class MyObject {
  int _value;
  MyObject(this._value);
  
  int get value => _value;
  set value(newValue) => _value = newValue;

void increase() {
      _value ++ ;
    }

void decrease() {
  _value -- ;
}

  void square() {
    _value = _value * _value;
  }


  int power(int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= _value;
    }
    return _value =  result;
  }

}

