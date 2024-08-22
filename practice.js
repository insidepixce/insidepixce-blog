let a = 0;
let b = 1;
let bool1 = true;
let bool2 = false;
console.log(typeof(a));
console.log(typeof(b));//number
console.log(typeof(bool1));
console.log(typeof(bool2));//boolean
console.log(typeof("---"));
let test1 = (a === 0);
let test2 = (b === 1);
console.log(typeof("---"));
console.log(test1)
console.log(test2)
console.log(typeof("---"));
console.log(bool1 + b); //1
console.log(bool2 + a); //0
console.log(typeof(bool1 +b));
console.log(typeof(bool2 +a));

console.log(typeof(!!(bool1+b)));

console.log(typeof(typeof(!!(a+b))));
console.log(typeof(false)); //boolean
