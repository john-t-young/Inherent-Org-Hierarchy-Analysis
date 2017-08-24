Inherent Organizational Hierarchy Analysis
==============

Intro
----
This project is conducted under guidance of Professor Thomas Lee, Visiting Adjunct Professor at UC Berkeley's Haas School of Business.  

Purpose
------
The data analysis performed on this particular data set will be used for identifying inherent organizational hierarchy of a client corporation without needing the actual organizational structure to guide the analysis.  The conclusion of this data science project will suggest one of two outcomes: that the inherent working organizational structure matches with actual management/HR defined structures or that an alternate working hierarchy has evolved within the corporation that supplements and/or transcends current HR defined structures.    

Data Set Initial Summary
------
The data set is currently stored in a flat file in CSV format.  It contains ten columns: *"Mailbox", "User.Geo", "User.Time.zone", "ORG", "Organizer", "Start.Time", "End.Time", "Duration", "Required.Attendees", "Optional.Attendees"*. 

Validity of data per vector has been listed below:
1. Mailbox -- Vector is not fully populated.  1 record is missing a mailbox user ID.  It looks like a data error where a full record was delimited into 2 separate records.  Not catching this in the R script and **[JY] is investigating why the NA issue is not showing up in count.** 
2. User.Geo -- Vector is fully populated but has 2,733 incorrect values.  All incorrect values == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NA errors.  **[JY] will add an extra line or two of code to deal with this.**
3. User.Time.zone -- Vector is fully populated but has 2,733 incorrect values.  Its a high certainty that all of these values are also incorrect but it is not a guarantee.  Reason is because it is possible that we are missing User Geo data but the user was actually at GMT 0 time zone; unlikely but possible.  Possible incorrect values == "0", with necessary condition that User.Geo == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NA errors.  **[JY] will add an extra line or two of code to deal with the second issue along with User.Geo issue.**
4. ORG -- Vector is not fully populated and has 30 NA values.  Not catching this in the R script which is an issue.  It also has 13,079 incorrect values.  Incorrect values == "0".  Not catching this in the R script because 0 is a valid number while the script is only looking for NA errors.  [JY] will add an extra line or two of code to deal with the second issue.  **Further investigating why the NA issue is not showing up in count.**
5. Organizer -- Vector is fully populated and but has 2 incorrect values.  NA is actually a text string in this case.  **[JY] to add an extra line of code to find none standard syntax strings, i.e. User XXXX or Ext XXXX**
6. Start Time -- Vector is fully populated and has no missing values or incorrect values.
7. End Time -- Vector is fully populated and has no missing values or incorrect values.  **There are interesting outliers with meetings ending in 2021**
8. Duration -- Vector is not fully populated.   **Interesting outliers where meeting time is 0 minutes long.  Does not look like placeholders either since there are attendees but that could be a poor assumption**
9. Required.Attendees -- Vector is not fully populated.  There are 148,305 empty cells.  **Is this a valid outcome?**
10. Optional.Attendees -- Vector is not fully populated but this is an optional field.

____

#### Action Items -- Mandatory
1. Debug and finalize NA identification code.  Current `sapply(mydata, function(y) sum(length(which(is.na(y)))))` isn't catching the NAs I verified again via `grep`.  I'm investigating further and should have an answer by tomorrow.  I have a couple hunches related to csv ingestion and data structure that may be causing this bad summary.
2. Finalize script that identifies common attendees relative to a User-Organizer Pair.  This will help us test one of the primary hypothesis that meetings are generally called for core groups with flex/optional attendees.
3. Finalize script that identifies common date-time combinations with duration.  This will be a secondary verification of the prior hypothesis.

#### Action Items -- Optional
1. Add extra lines of code to correct incorrect values in User.Geo.  **Prof Lee, do you have any suggestions on what to convert User.Geo to if its designated 0 currently?  I left this as an optional fix since it may not be as relevant an omission v ORG column null value?**
