//#pragma: execution
AnimatedContainer(
  duration: Duration(milliseconds: 400),
  color:Colors.red,
  curve: Curves.bounceOut,
   height:##SOURCE##.length > 0 ? 50: 0, child:ListView(
    children:##SOURCE##.indexed.map((v) => ListTile(
      title:Text('${v.$2}', style: TextStyle(color:Colors.white, fontSize: 12),))).toList())),


//#pragma: config
{
  defaultGetter:'getErrors'
}