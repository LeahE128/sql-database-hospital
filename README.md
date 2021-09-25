# sql-database-hospital

Implementing an sql database that contains the advertising of positions for Hospitals which require certain skills for each position. Included are databases containing information for interview details, position details, position skills, required, candidate details, candidate skills and hospital details.

## Description of Database:

•My database represents the following scenario: “Hospitals advertise positions which require specific skills such as Nursing or Administrative etc., whereby candidates may be invited for interviews for the positions”.
•My database consists of storing the relevant information for this scenario such as hospital details neededfor interviews, interview details, position details, skills needed for position details and candidate details.

## Discussion of assumptions made:

Hospital names and Hospital ID’s :

•I used names of hospitals that are located in Ireland.
•For the hospital IDs, I looked up the number of hospitals in Ireland which was around 100 and so based my IDs on numbers between 1-100.

Candidate names and Candidate ID’s:

•I made up names that made coherent sense for the candidate names and used a 4 digit random number toassign ids to the candidates.
•The 4 digit numbers are significant as it is to represent the number of employees interviewed for a position in a specific hospital i.e the 1000th person from the last 3 years.

Skills names and Skills ID’s :

•I used names of skills relevant to hospital e.g nursing, medicine etc.•For skills ids I just kept it simple, I used Nur1 for nursing for example.

Position names and Position ID’s:

•I made up position names for positions I feel would be relevant to hospitals such as General Nurse or Cardiac Doctor.
•For the position ids I used the hospital advertising the position and the position name e.g Bea_PhySio.

Interview Assumptions:

•I created interview IDs with the first three letters of the hospital advertising for a specific position e.g Beaumont Hospital advertised for a physiotherapist e.g Bea_PhySio. However, I made the assumption that as all Hospitals are under the HSE, sister hospitals could interview for that role aswell, if it fits what they are looking for and so they can request many interviews for a position.

Additions Made:

•I added a skills table to link the id of skills with a skill name.
•I added a date column in the interview table to show what date an interview was held.
•I added a Hired column to the hospital_hiring_candidate table to show who had been successful and who had not with a Hired ‘Yes’ or ‘No’.

Discussion of Reaction Policies:

These are the Reaction Policies in my Tables with associated Foreign Keys:

Candidates_having_skills Table:

•I have restricted both update and on deleteas the information should not change as the information will be obtained from the candidates putting down their skills on  a form for example and then stored in this database. I see no reason why this should ever have to be changed.

Candidates_taking_interviews Table:

•I have used cascade on updateas candidates may for some reason not be able to attend an interview or they never showed up so I think adding an extra column here would be good to input that information and I have restricted on delete as the information is always good to have for example if a candidate never showed up for interview, it’s good to have that there and an extra column could be added to say this rather than allowing the deletion of the candidate.

Hospital_hiring_candidates Table:

•I have used cascade on updateand on delete as if there is an additional candidate for interview that can be added to the system and the information is updated in all relevant tables.

Hospital_taking_interviews Table:

•I have used cascade on updateand on delete as if there is an additional interview date or an additional role, that can be added to the system and the information is updated in all relevant tables.

Position_requiring_skills Table:

•I have used cascade on updateand on delete in the positionId foreign key as if there is an additional position, thatinformationcan be added to the system and the information is updated in all relevant tables.I have kept both on delete and on update restricted for skillsid as the skills will remain the same for the position advertis
