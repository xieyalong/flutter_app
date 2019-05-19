class UserModel{
  List<String> data=new List();
  List<String> getData(){
    for(int i=0;i<100;i++){
      data.add('i=$i');
    }
    return data;
  }
}