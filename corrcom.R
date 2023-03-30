corr<-function(directory='specdata',threshold=0){
  
        cor_num<-c()
        fnames<-list.files(path="specdata",full.names = TRUE)
        sulfate_read<-c()
        nitrate_read<-c()
        df_read<-data.frame()
        count<-0
        for ( i in seq_along(fnames)){
          
                  f_read<-read.csv(fnames[i],header=TRUE,sep=",")
                  good<-complete.cases(f_read)
                  df_nna<-f_read[good,]
                  
                  if(threshold < dim(df_nna)[1]){
                    
                         sulfate_read<-df_nna[1:threshold,'sulfate']
                         nitrate_read<-df_nna[1:threshold,'nitrate']
                         cor_num[i]<-cor(sulfate_read , nitrate_read)
                         
                  }else{
                    #print("Dimension is less than threshold")
                  }
                  
        }
        no_na<-is.na(cor_num)
        cor_num[!no_na]
}