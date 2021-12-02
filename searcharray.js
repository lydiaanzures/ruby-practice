const searchArray = (array, value) => {
    for(let i = 0; i < array.length-1; i++) {
      if(array[i] == value) {
        return true;
        break;
      }
    }
    return -1;
  };