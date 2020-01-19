const url=require('url');

const myUrl=new URL('http://mywebsite.com:8000/hello.html?id=100&status=active');

//serialized URL

console.log(myUrl.href);

console.log(myUrl.host);

console.log(myUrl.hostname);

console.log(myUrl.pathname);

//serialized query

console.log(myUrl.search);

myUrl.searchParams.forEach((value,key)=>{
console.log(value);

});