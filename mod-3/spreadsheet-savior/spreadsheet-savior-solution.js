var data = [
  [409, 194, 207, 470, 178],
  [454, 235, 333, 511, 103],
  [474, 293, 525, 372, 408],
  [428, 4321, 2786, 6683, 3921],
  [265, 262, 6206, 2207, 5712]
]

function max(arr){
  return arr.reduce(function(a, b){
    return Math.max(a,b)
  })
}

function min(arr){
  return arr.reduce(function(a, b){
    return Math.min(a,b)
  })
}

// One way of solving it
function checkSum1(arr){
  let checksum = 0
  arr.forEach(function(row){
    checksum += (max(row) - min(row))
  })

  return checksum
}

// Second way of solving it
function checkSum2(arr){
  let checksum = 0
  arr.forEach(function(row){
    let difference = Math.max(...row) - Math.min(...row)
    checksum += difference
  })

  return checksum
}


console.log(checkSum1(data))
console.log(checkSum2(data))
