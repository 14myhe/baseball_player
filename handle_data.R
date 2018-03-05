#读取原始数据
baseball <-read.csv('baseball_data.csv');
#按照"weight","avg","handedness"三个属性分组
a<-ddply(baseball,c("weight","avg","handedness"),summarise,wn=length(name));
#按照"height","avg","handedness"三个属性分组
b<-ddply(baseball,c("height","avg","handedness"),summarise,hn=length(name));
#合并wn入baseball
baseball<-merge(baseball,a,all=TRUE);
#合并hn入baseball
baseball<-merge(baseball,b,all=TRUE);
#将处理完的数据写入csv文件，最终数据集1157行*8列
write.csv(baseball, file = "C:/Users/Nicole/Desktop/baseball_player/final_baseball_data.csv", row.names = F, quote = F)

