const fizzbuzzer = (x) => {
    if( x%(3*5) == 0 ) {
      return 'fizzbuzz'
    } else if( x%3 == 0 ) {
      return 'fizz'
    } else if ( x%5 == 0 ) {
      return 'buzz'
    } else {
      return 'archer'
    }
  }