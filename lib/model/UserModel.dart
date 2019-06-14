class UserModel{
  UserModel._(this.id);
  UserModel._1(this.id,this.name);
  UserModel._2(this.id, this.name, this.address);
  UserModel(this.id, this.name, this.address);
  int id;
  String name;
  String address;
  String url='http://p4.so.qhmsg.com/sdr/200_200_/t01a556f4f4eaf1b669.jpg';
}
main(){
 UserModel um=UserModel._(1);
  new UserModel._1(1, '张三');
 um=UserModel._2(1, '张三','北京');
 print(um);
}
