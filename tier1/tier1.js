// Create a function that will return the datatype parameter.
// Value: 10 points
function getType(obj) {
    return typeof(obj);
}

// Create a function that will take in a variable number of arguments and return their product.
// Value: 20 points
function getProduct() {
    let p = 1;
    for (var i = 0; i < arguments.length; i++) {
        p = p * arguments[i];
    }
    return p;
}

// Create a function that iterates over an integer array and returns their sum.
// Value: 30 points
function sumArray(intArray) {
    let sum = 0;
    for (let i = 0; i < intArray.length; i++) {
        sum += intArray[i];
    }
    return sum;
}

// Create a function that, given an integer, can raise each digit to the power of the overall length and return whether the sum of the powers is equal to the original integer.
// Value: 40 points
function checkPowers(val) {
    const sVal = val.toString();
    let sum = 0;
    const ex = sVal.length;
    for (let i = 0; i < ex; i++) {
        const d = parseInt(sVal.charAt(i));
        sum += Math.pow(d, ex);
    }
    return sum == val;
}

console.log(getType(1)); // number
console.log(getType("hello")); // string
console.log(getProduct(2, 3)); // 6
console.log(getProduct(1, 2, 3, 4)); // 24
const arr = [1,2,3,4];
console.log(sumArray(arr)); // 10
console.log(checkPowers(123)); // false
console.log(checkPowers(1)); // true