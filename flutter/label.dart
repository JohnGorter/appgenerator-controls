
//#pragma: imports
import 'dart:convert';

//#pragma: execution
GestureDetector(onTap:(){ dynamic event;##TRIGGERS## }, child:Text("${jsonEncode(##SOURCE##)}", style: Theme.of(context).textTheme.headlineMedium)),