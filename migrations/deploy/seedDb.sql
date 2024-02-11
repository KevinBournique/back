-- Deploy tardis_db:seedDb to pg

BEGIN;

INSERT INTO "doctor" (
    "doctor_number",
    "actor_name",
    "first_episode_date",
    "last_episode_date"
) 

VALUES
    (1, 'William Hartnell', '1963-11-23', '1966-10-29'),
    (2, 'Patrick Troughton', '1966-10-29', '1969-06-21'),
    (3, 'Jon Pertwee', '1970-01-03', '1974-06-08'),
    (4, 'Tom Baker', '1974-06-08', '1981-03-21'),
    (5, 'Peter Davison', '1982-03-21', '1984-03-16'),
    (6, 'Colin Baker', '1984-03-16', '1986-12-06'),
    (7, 'Sylvester McCoy', '1987-09-07', '1996-12-30'),
    (8, 'Paul McGann', '1996-05-27', '1996-05-27'),
    (9, 'Christopher Eccleston', '2005-03-26', '2005-06-18'),
    (10, 'David Tennant', '2005-12-25', '2010-01-01'),
    (11, 'Matt Smith', '2010-01-01', '2013-12-25'),
    (12, 'Peter Capaldi', '2013-12-25', '2017-12-25'),
    (13, 'Jodie Whittaker', '2017-12-25', '2022-10-31'),
    (14, 'David Tennant','2023-11-25', '2023-12-09' ),
    (15, 'Ncuti Gatwa','2023-12-09', '2024-12-09');


COMMIT;
