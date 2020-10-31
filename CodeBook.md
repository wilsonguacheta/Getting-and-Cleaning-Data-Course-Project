---
title: CodeBOOK
author: Wilson Guacheta
date: 10/31/2020
output:
  html_document: default
  pdf_document: default
---



 Modifications

# original data

-  Merging the training and the test sets to create one data set.  
-  Extracting only the measurements on the mean and standard deviation for each measurement.  
-  Useing descriptive activity names to name the activities in the data set.  
-  Appropriately labeling the data set with descriptive variable names.  
-  Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

**view** *run_analysis.R*



 Descriptions
# Identififiers

The first two columns - *Subject* and *Activity* - are Identifiers.

-  **Subject:** the ID of the Subject
-  **Activity:** the Name of the Activity performed by the subject when measurements were taken

# Measurements

As mentioned above,the variables remaining are just the calculatd means Mean and standard deviations STD of these sets of data: 

The variables have the same meaning as the original variables (see features_info.txt), but their name varies slightly to make them more descriptive.

see the following conventions:


Acc = Accelerometer

Gyro = Gyroscope

BodyBody = Body

Mag = Magnitude

t = Time

f = Frequency 

tBody = TimeBody

mean = Mean 

std = STD

freq = Frequency

angle = Angle 

gravity = Gravity


The set of variables that were estimated from these signals are: 

-  TimeBodyAccelerometerMean-X              
-  TimeBodyAccelerometerMean-Y                          
-  TimeBodyAccelerometerMean-Z                          
-  TimeGravityAccelerometerMean-X                       
-  TimeGravityAccelerometerMean-Y                       
-  TimeGravityAccelerometerMean-Z                       
-  TimeBodyAccelerometerJerkMean-X                      
-  TimeBodyAccelerometerJerkMean-Y                      
-  TimeBodyAccelerometerJerkMean-Z                      
-  TimeBodyGyroscopeMean-X                              
-  TimeBodyGyroscopeMean-Y                              
-  TimeBodyGyroscopeMean-Z                              
-  TimeBodyGyroscopeJerkMean-X                          
-  TimeBodyGyroscopeJerkMean-Y                          
-  TimeBodyGyroscopeJerkMean-Z                          
-  TimeBodyAccelerometerMagnitudeMean                   
-  TimeGravityAccelerometerMagnitudeMean                
-  TimeBodyAccelerometerJerkMagnitudeMean               
-  TimeBodyGyroscopeMagnitudeMean                       
-  TimeBodyGyroscopeJerkMagnitudeMean                   
-  FrequencyBodyAccelerometerMean-X                     
-  FrequencyBodyAccelerometerMean-Y                     
-  FrequencyBodyAccelerometerMean-Z                     
-  FrequencyBodyAccelerometer-meanFrequency-X           
-  FrequencyBodyAccelerometer-meanFrequency-Y           
-  FrequencyBodyAccelerometer-meanFrequency-Z           
-  FrequencyBodyAccelerometerJerkMean-X                 
-  FrequencyBodyAccelerometerJerkMean-Y                 
-  FrequencyBodyAccelerometerJerkMean-Z                 
-  FrequencyBodyAccelerometerJerk-meanFrequency-X       
-  FrequencyBodyAccelerometerJerk-meanFrequency-Y       
-  FrequencyBodyAccelerometerJerk-meanFrequency-Z       
-  FrequencyBodyGyroscopeMean-X                         
-  FrequencyBodyGyroscopeMean-Y                         
-  FrequencyBodyGyroscopeMean-Z                         
-  FrequencyBodyGyroscope-meanFrequency-X               
-  FrequencyBodyGyroscope-meanFrequency-Y               
-  FrequencyBodyGyroscope-meanFrequency-Z               
-  FrequencyBodyAccelerometerMagnitudeMean              
-  FrequencyBodyAccelerometerMagnitude-meanFrequency    
-  FrequencyBodyAccelerometerJerkMagnitudeMean          
-  FrequencyBodyAccelerometerJerkMagnitude-meanFrequency
-  FrequencyBodyGyroscopeMagnitudeMean                  
-  FrequencyBodyGyroscopeMagnitude-meanFrequency        
-  FrequencyBodyGyroscopeJerkMagnitudeMean              
-  FrequencyBodyGyroscopeJerkMagnitude-meanFrequency    
-  AngleTimeBodyAccelerometerMean,Gravity             
-  AngleTimeBodyAccelerometerJerkMean,GravityMean    
-  AngleTimeBodyGyroscopeMean,GravityMean             
-  AngleTimeBodyGyroscopeJerkMean,GravityMean         
-  AngleX,GravityMean                                 
-  AngleY,GravityMean                                 
-  AngleZ,GravityMean                                 
-  TimeBodyAccelerometerSTD-X                           
-  TimeBodyAccelerometerSTD-Y                           
-  TimeBodyAccelerometerSTD-Z                           
-  TimeGravityAccelerometerSTD-X                        
-  TimeGravityAccelerometerSTD-Y                        
-  TimeGravityAccelerometerSTD-Z                        
-  TimeBodyAccelerometerJerkSTD-X                       
-  TimeBodyAccelerometerJerkSTD-Y                       
-  TimeBodyAccelerometerJerkSTD-Z                       
-  TimeBodyGyroscopeSTD-X                               
-  TimeBodyGyroscopeSTD-Y                               
-  TimeBodyGyroscopeSTD-Z                               
-  TimeBodyGyroscopeJerkSTD-X                           
-  TimeBodyGyroscopeJerkSTD-Y                           
-  TimeBodyGyroscopeJerkSTD-Z                           
-  TimeBodyAccelerometerMagnitudeSTD                    
-  TimeGravityAccelerometerMagnitudeSTD                 
-  TimeBodyAccelerometerJerkMagnitudeSTD                
-  TimeBodyGyroscopeMagnitudeSTD                        
-  TimeBodyGyroscopeJerkMagnitudeSTD                    
-  FrequencyBodyAccelerometerSTD-X                      
-  FrequencyBodyAccelerometerSTD-Y                      
-  FrequencyBodyAccelerometerSTD-Z                      
-  FrequencyBodyAccelerometerJerkSTD-X                  
-  FrequencyBodyAccelerometerJerkSTD-Y                  
-  FrequencyBodyAccelerometerJerkSTD-Z                  
-  FrequencyBodyGyroscopeSTD-X                          
-  FrequencyBodyGyroscopeSTD-Y                          
-  FrequencyBodyGyroscopeSTD-Z                          
-  FrequencyBodyAccelerometerMagnitudeSTD               
-  FrequencyBodyAccelerometerJerkMagnitudeSTD           
-  FrequencyBodyGyroscopeMagnitudeSTD                   
-  FrequencyBodyGyroscopeJerkMagnitudeSTD




