const nthFibonacciNumber = () => {
  let fibs = [1, 1];
  let num = prompt("which fibonacci number do you want?");

  while (fibs.length < parseInt(num)) {
    let length = fibs.length;
    let nextFib = fibs[length - 2] + fibs[length - 1];
    fibs.push(nextFib);
  }

  alert(fibs[fibs.length - 1] + " is the fibonacci number at position " + num);
};