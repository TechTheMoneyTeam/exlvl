class Distance{
  double? cms;
  double? kms;
  double? meters;

  double? get cms1{
    return cms;
  }
  double? get kms1{
    return kms;
  }
  double? get meters1{
    return meters;
  }
  Distance.kms(double? kms){
    if(kms != null){
      this.kms = kms;
      this.meters = kms * 1000;
      this.cms = kms * 100000;
    }
}
  Distance.cms(double? cms){
    if(cms != null){
      this.kms = cms / 100000;
      this.meters = cms / 1000;
      this.cms = cms;
    }
}
  Distance.meters(double? meters){
    if(meters != null){
      this.kms = meters / 1000;
      this.meters = meters;
      this.cms = meters * 100;
    }
}
  @override
  String toString(){
    return 'cm : $cms , km : $kms , meters : $meters';
  }
  Distance operator + (Distance other){
    return Distance.kms((this.meters! + other.meters!) / 1000);

  }
}
void main(){
  Distance d1 = Distance.kms(3.4);
  Distance d2 = Distance.meters(1000);
  print(d1 + d2);
}