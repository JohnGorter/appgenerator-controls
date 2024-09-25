//#pragma: imports
import 'dart:convert';



//#pragma: config
{
  config: {
    defaultAction:"add"
  }
}

//#pragma: execution
TextField(  obscureText: false,  decoration:  InputDecoration( border: OutlineInputBorder(), labelText: "Name", hintText: "${jsonEncode(##SOURCE##)}") ,onChanged: (value) => statemanagement.setState([[id]], value),),TextButton(child:Text("save"), onPressed:() { dynamic event = ListItem(title:statemanagement.getState([[id]]), subtitle:statemanagement.getState([[id]])); ##TRIGGERS##;}),
