
-- 1. Videos Table
create table videos(uniqueID TEXT, videoLength DECIMAL, URL TEXT);
insert into videos values(
'iP1wOSsKjW8', 
751, 
'https://www.youtube.com/watch?v=iP1wOSsKjW8');

insert into videos values(
'FAXhXI2Gxdc', 
529, 
'https://www.youtube.com/watch?v=FAXhXI2Gxdc');

insert into videos values(
'6BfofgkrI3Y', 
508, 
'https://www.youtube.com/watch?v=6BfofgkrI3Y');
-- end question 1


-- 2. Reviewers Table
create table reviewers(userName TEXT, rating DECIMAL, textReview TEXT, uniqueID TEXT);
insert into reviewers values(
'Ned', 
4, 
'This guys videos are incredibly helpful',
'iP1wOSsKjW8'
);

insert into reviewers values(
'Sean', 
3, 
'You can be more energetic',
'iP1wOSsKjW8'
);

insert into reviewers values(
'Jason', 
5, 
'Very fun!',
'FAXhXI2Gxdc'
);

insert into reviewers values(
'Victor', 
5, 
'I laughed at 3:00',
'6BfofgkrI3Y'
);

insert into reviewers values(
'Steven', 
5, 
'This guy is very smart',
'6BfofgkrI3Y'
);

insert into reviewers values(
'Sean', 
5, 
'Why cant all videos be this entertaining?',
'6BfofgkrI3Y'
);
-- end question 2


-- 3. Join Statement
select v.uniqueID, v.URL, r.rating, r.userName
from videos v
join reviewers r
on v.uniqueID = r.uniqueID;
-- end question 3