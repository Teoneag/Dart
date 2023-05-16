class House {
  int _nrOfWindows = 0;
  int _nrOfDoors = 0;
  String _typeOfWalls = '';
  String _typeOfRoof = '';

  House(
      {required int nrOfWindows,
      required int nrOfDoors,
      required String typeOfWalls,
      required String typeOfRoof})
      : this._nrOfWindows = nrOfWindows,
        this._nrOfDoors = nrOfDoors,
        this._typeOfWalls = typeOfWalls,
        this._typeOfRoof = typeOfRoof;

  int get nrOfWindows => _nrOfWindows;
  int get nrOfDoors => _nrOfDoors;
  String get typeOfDoors => typeOfDoors;
  String get typeOfRoof => typeOfRoof;

  set nrOfWindows(int nr) => _nrOfWindows = nr;
  
  set nrOfDoors(int nr) => _nrOfDoors = nr;
  set typeOfWalls(String type) => _typeOfWalls = type;
  set typeOfRoof(String type) => _typeOfRoof = type;

  void printData() {
    print('The number of doors in the house: ${this._nrOfDoors}');
    print('The number of doors in the house: ${this._nrOfWindows}');
    print('The type of roof: ${this._typeOfRoof}');
    print('The type of walls: ${this._typeOfWalls}');
  }
}
