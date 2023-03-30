#Count the Complete cases in each file present
complete<-function(directory='specdata',ids=1:332){
          files<-dir(path = directory)
          nobs<-c()
          id<-c()
          for(i in seq_along(ids)){
            file<-paste("specdata/",files[ids[i]],sep='')
            file.readings<-read.csv(file,header=TRUE,sep=",")
            good<-complete.cases(file.readings)
            df.nna<-file.readings[good,]
            good<-complete.cases(file.readings)
            x<-dim(df.nna)[1]
            nobs[i]<-x
            id[i]<-ids[i]
          }
          counting<-data.frame(id,nobs)
          print(counting)
}