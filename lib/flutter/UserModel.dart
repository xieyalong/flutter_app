class UserModel{
  int id;
  String name;
  String img;
  bool boo;
  UserModel(this.id, this.name,this.img,this.boo);
  List<UserModel> data=new List();
  List<UserModel> getData(){
    String imgstr="http://img0.imgtn.bdimg.com/it/u=3057108907,1952272275&fm=26&gp=0.jpg";
    for(int i=0;i<50;i++){
      data.add(new UserModel(i+1, 'name${i}',imgstr,false));
    }
    return data;
  }

}

//List<UserModel> _list=new List();
//void  initData(){
//  for(int i=0;i<50;i++){
//    _list.add(new UserModel(i+1, 'name${i}'));
//  }
//}
