Inherent Organizational Hierarchy Analysis
-------------------------------

#### Intro
This project is conducted under guidance of Professor Thomas Lee, Visiting Adjunct Professor at UC Berkeley's Haas School of Business.  

#### Purpose
The data analysis performed on this particular data set will be used for identifying inherent organizational hierarchy of a client corporation without needing the actual organizational structure to guide the analysis.  The conclusion of this data science project will either be able to define an underlying organizational structure that matches with the actual management structure or it will be able to suggest with relative confidence that an alternate hierarchy has evolved within the corporation that breaks current HR defined structures.    

#### Data Set Summary
The data set is currently stored in a flat file in CSV format.  It contains ten columns: *"Mailbox", "User.Geo", "User.Time.zone", "ORG", "Organizer", "Start.Time", "End.Time", "Duration", "Required.Attendees", "Optional.Attendees"*. 

Validity of data per vector has been listed below:
1. Mailbox -- Vector is not fully populated.  1 record is missing a mailbox user ID.  Not catching this in the R script and [JY] **is investigating why the NaN issue is not showing up, most likely a CSV import issue where blanks are turned into zeroes.** 
2. User.Geo -- Vector is fully populated but has 2,368 incorrect values.  All incorrect values == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NaN errors.  [JY] will add an extra line or two of code to deal with this.
3. User.Time.zone -- Vector is fully populated but has 2,368 incorrect values.  Not catching this in the R script which is an issue.  It also has 2,368 incorrect values, possibly, and this is certainly related to User.Geo.  Possible incorrect values == "0", with necessary condition that User.Geo == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NaN errors.  [JY] will add an extra line or two of code to deal with the second issue along with User.Geo issue.
4. ORG -- Vector is not fully populated and has 3 NaN cells.  Not catching this in the R script which is an issue.  It also has 10,784 incorrect values.  Incorrect values == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NaN errors.  [JY] will add an extra line or two of code to deal with the second issue along with User.Geo issue.  **Further investigating why the NaN issue is not showing up, most likely a CSV import issue where blanks are turned into zeroes.**
5. Organizer -- Vector is fully populated and has no missing values or incorrect values.
6. Start Time -- Vector is fully populated and has no missing values or incorrect values.
7. End Time -- Vector is fully populated and has no missing values or incorrect values.  **There are interesting outliers with meetings ending in 2021**
8. Duration -- Vector is not fully populated.   and has no missing values or incorrect values. **Interesting outliers where meeting time is 0 minutes long.  Does not look like placeholders either since there are attendees but that could be a poor assumption**
9. Required.Attendees -- Vector is not fully populated.  There are 68,192 empty cells.  **Is this a valid outcome?  There are 
10. Optional.Attendees -- 
