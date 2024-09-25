//#pragma: setup
listviewchildren[[id]].add(ListTile(title:Text("john")));


//#pragma: execution
##SOURCE##.length > 0 ? Expanded(child:ListView(children:##SOURCE##.indexed.map((v) => ListTile(onTap: () { dynamic event = v.$2;##TRIGGERS## },title:Text('${v.$2.title}'), subtitle:Text('${v.$2.subtitle}'))).toList())) : Expanded(child:Container(alignment:Alignment.center, color:Colors.green, child:Text('no data for list'))),

//#pragma: declaration
    List<ListTile> listviewchildren[[id]]= [];

//#pragma: config
{
    defaultAction:"select",
    defaultGetter:"getList" 
}
