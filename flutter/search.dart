//#pragma: config
{
  config: {
    defaultAction:"search"
  }
}

//#pragma: execution
TextField(  obscureText: false,  decoration:  InputDecoration( border: OutlineInputBorder()) ,onChanged: (value) => statemanagement.setState([[id]], value),),TextButton(child:Text("search"), onPressed:() { dynamic event = statemanagement.getState([[id]]); ##TRIGGERS##;}),
