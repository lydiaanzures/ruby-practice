const multiplyArray = (ary) => {
    if (ary.length == 0) { return 1; };
  
    let total = 1;
    // let total = ary[0];
  
    for (let i=0; i < ary.length; i++) {
      total = total * ary[i];
    };
    console.log(total)
    return total;
  };

  multiplyArray([1,2,3,4])