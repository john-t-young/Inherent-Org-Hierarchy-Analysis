Inherent Organizational Hierarchy Analysis
-------------------------------

#### Intro
This project is conducted under guidance of Professor Thomas Lee, Visiting Adjunct Professor at UC Berkeley's Haas School of Business.  

#### Purpose
The data analysis performed on this particular data set will be used for identifying inherent organizational hierarchy of a client corporation without needing the actual organizational structure to guide the analysis.  The conclusion of this data science project will either be able to define an underlying organizational structure that matches with the actual management structure or it will be able to suggest with relative confidence that an alternate hierarchy has evolved within the corporation that breaks current HR defined structures.    

#### Data Set Summary
The data set is currently stored in a flat file in CSV format.  It contains ten columns: *"Mailbox", "User.Geo", "User.Time.zone", "ORG", "Organizer", "Start.Time", "End.Time", "Duration", "Required.Attendees", "Optional.Attendees"*. 

Validity of data per vector has been listed below:
#1. Mailbox -- Vector is fully populated and has no missing values or incorrect values.
#2. User.Geo -- Vector is fully populated but has 2,368 incorrect values.  All incorrect values == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NaN errors.  [JY] will add an extra line or two of code to deal with this.
#3. User.Time.zone -- Vector is fully populated but has 2,368 incorrect values, possibly and this likely has a root problem similar to User.Geo.  Possible incorrect values == "0", with necessary condition that User.Geo == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NaN errors.  [JY] will add an extra line or two of code to deal with this and 2.
