void main (){
  List<int>filtered = [];
  List<int>nums = [3, 7, 12, 5, 8, 2];
  for (var i = 0; i < nums.length; i++) {
    if(nums[i]>5){
      filtered.add(nums[i]);
    }
     
  }
  print(filtered);




}