void main(){
  int i , j ;
  iloop:
  for(i=0;i<10;i++){
    jloop:
    for(j=i;j<15;j++){
      print( "value of i is $i");
      print("value of j is $j");
      if(j==3)
        break jloop;
      if(i==j)
        continue iloop;
    }
  }   
}