package edu.stonyBrookUni.indepndntProj.loginPackage;




import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
 
public class ValidateData {
	
	static String dataFileLocation = "C:\\Program Files\\Apache Software Foundation\\Tomcat 7.0\\webapps\\UnivTutSystem\\data\\stuData.csv";
    
	 
	 static HashMap<String,String> map=new HashMap<String,String>();
	 
	 static void prepareMap() {
		//Delimiter used in CSV file
	       
		 	BufferedReader fileReader = null;
	        final String DELIMITER = ",";
	        try
	        {
	            
	            //Create the file reader
	            fileReader = new BufferedReader(new FileReader(dataFileLocation));
	            String line = fileReader.readLine();
	            //Read the file line by line
	            while ((line = fileReader.readLine()) != null)
	            {
	                //Get all tokens available in line
	                String[] tokens = line.split(DELIMITER);
	                
	                 System.out.println(tokens[3]+" "+tokens[2]);
	                 
	                 String netid= tokens[2].substring(1, tokens[2].length()-1).replace("\"", "");
	                 
	                 String sbuid=tokens[3].substring(1, tokens[3].length()-1).replace("\"", "");
	                 
	                 
	                 map.put(sbuid,netid.trim());
	                
	            }
	        }
	        catch (Exception e) {
	            e.printStackTrace();
	        }
	        finally
	        {
	            try {
	                fileReader.close();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
		 
	 }
	 
	 static {
		 prepareMap();
	 }
	 
	 static boolean isValid(String netid, String sbuId) {
		 String str=map.get(sbuId.trim());
		if(str!=null && str.equals(netid)) return true;
		return false; 
	 }
	
    public static void main(String[] args)
    {
       System.out.println(map.get("110632692"));
    }
}

