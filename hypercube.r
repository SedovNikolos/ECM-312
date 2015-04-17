setwd("/home/user/Документы/ECM-312")
mytable<-read.table("Azerbaijan.csv",header=TRUE,sep=",")
years<-c(mytable[1:16,1],"sum")
chars=c("Терроризм","Террорист","Оккупация","Наркотики","Насилие","Демократия","Развитие")
countries=c("Казахстан","Индия","Армения","Китай","Азербайджан","Туркменистан","Сомали")
alltable<-array(0,c(17,7,7),list(years,chars,countries))
attach(mytable)
vars<-c("Казахстан","Индия","Армения","China.txt","Azerbaijan.csv","Туркменистан","Сомали")
for(s in c(4,5)){
  mytable<-read.table(vars[s],header=TRUE,sep=",")
  ymax<-max(mytable[][2:8])
  for (y in 1:16){
    for(v in 1:7){
      alltable[y,v,s]<-mytable[y,v+1]
    }
  }
}
alltable[,,5]
