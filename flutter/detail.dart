//#pragma: imports
import 'dart:convert';

//#pragma: execution
Container(height:250 ,child:Column(children:[ Text("${##SOURCE##?.title}  ${##SOURCE##?.subtitle} ${##SOURCE##?.detailtext} "), if (##SOURCE##?.image != "") Container(width:300, child:Image.network(##SOURCE##?.image ?? "")) ])),
