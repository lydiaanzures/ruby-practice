const hasDupes = (arr) => {
    let obj = {};
    for (i = 0; i < arr.length; i++) {
      if(obj[arr[i]]) {
        return true;
      }
      else {
        obj[arr[i]] = true;
      }
    }
    return false;
  };