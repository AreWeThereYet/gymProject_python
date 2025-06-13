CREATE TABLE exercise_type (
    id INTEGER PRIMARY KEY ,
    name VARCHAR(100) NOT NULL
);

insert into exercise_type(id,name) values
(3, 'Cardio (distance + time + details)'),
(1, 'Weights (weight + reps + details'),
(5, 'Simple Reps'),
(4, 'Stairmaster (time + floors + level)'),
(2, 'Own Body Weight (reps + assisted weight)')