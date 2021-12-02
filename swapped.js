const swapEm = () => {
    let a = 10;
    let b = 30;
    let temp;
  
    temp = b;
    b = a;
    a = temp;
  
    console.log("a is now " + a + ", and b is now " + b);
  };

swapEm()