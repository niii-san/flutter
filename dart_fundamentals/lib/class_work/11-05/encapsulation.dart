class Arithmetic {
  int _first;
  int _second;

  Arithmetic(this._first, this._second);

  int getFirst() {
    return _first;
  }

  void setfirst(int n) {
    _first = n;
  }

  int getSecond() {
    return _second;
  }

  void setSecond(int n) {
    _second = n;
  }

  int add() {
    return _first + _second;
  }
}
