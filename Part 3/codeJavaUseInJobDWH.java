//Code java utilisé dans les jobs  jDimDescription, jDimSousCategorie, jFaitDepense, jChargeDWH
//tJava_1
System.out.println("-----------------------------------------------------------------------------");
System.out.println("Début d'exécution du job "+jobName+ "        : " + 
TalendDate.formatDate("yyyy-MM-dd HH:mm:ss",new java.util.Date(((Long)globalMap.get("tChronometerStart_1_STARTTIME"))))
);


//tJava_2
System.out.println("Fin d'exécution du job "+jobName+ "          : "+ 
TalendDate.formatDate("yyyy-MM-dd HH:mm:ss",new java.util.Date(((Long)globalMap.get("tChronometerStop_1_STOPTIME")))
));

System.out.println("Durée totale d'exécution du job "+jobName+ " : "+  
customCode.getFormattedTime(((Long)globalMap.get("tChronometerStop_1_DURATION"))) + "");
System.out.println("-----------------------------------------------------------------------------");