#Calculate the mean of pollutant 

pollutantmean<-function(directory='specdata',pollutant,ids=1:332){

        fnames<-list.files(path="specdata",full.names = TRUE)
        df_read<-data.frame()
        
        for(id in ids){
                 
                  p_df<-read.csv(fnames[id])
                  df_read<-rbind.data.frame(df_read,p_df)
        }
        #print(df_read)
        p_data<-df_read[,pollutant]
        print(mean(p_data,na.rm=TRUE))
  
  
  
  
  
  
  
}