function AddUser(){    
    var v = new  XMLWriter();
    v.writeStartDocument(true);
    v.writeElementString('test','Hello World');
    v.writeAttributeString('foo','bar');
    v.writeEndDocument();
    console.log( v.flush() );
 }


