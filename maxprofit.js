var maxProfit = function(prices) {
  let profitArray = [];
  for (let i = 0; i <= prices.length - 2; i++) {
    if (prices[i] < prices[i+1]) {
      profitArray.push(prices[i+1] - prices[i]);
    } 
  }
  return sum(profitArray);
    
};

function sum(arr) {
   return arr.reduce(function (a, b) {
      return a + b;
   }, 0);
}