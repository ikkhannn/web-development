const path=require('path');

// Base file name


console.log(path.basename(__filename));

console.log(path.dirname(__filename));

//file extension

console.log(path.extname(__filename));

console.log(path.parse(__filename));

//concatenate paths

console.log(path.join(__dirname,'test','hello.html'))