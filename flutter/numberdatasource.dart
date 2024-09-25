//#pragma: global
   NumberDataSource datasource[[id]] = NumberDataSource();

//#pragma: setup
        datasource[[id]].addListener((){
          setState(() {});
        });

//#pragma: declaration
class NumberDataSource extends ChangeNotifier {
  int _value =  0;
  int get value => _value;
  set value(v) {
      _value = v;
      notifyListeners();
    
  }

  _refresh(e) {
    _value = _value + 1;
  }

  refresh(e) {
    _refresh(e); 
    notifyListeners(); 
  }

  int getValue() => _value; 
  setValue(v) { _value = v; notifyListeners(); }

  }
         