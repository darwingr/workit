### Equipment

Any standard or IoT (internet of things) equipment or station involved in an exercise.

- has or belongs to an exercise?


### Workout

(is the actual event as it took place which follows a routine)

Tracks workout metrics as they become trackable (and part of a routine or exercise?).

+ start|end
+ date
+ ...biometrics

- has_one :routine
	the routine should be closed for modification by the workout
	but open for extension
- has_many :exercises, through: :routine


### Routine

(is the pre-determined exercises to done in a workout)

Each returns a total expected work volume,
weekly increase should not be > %10 (business logic) to avoid burnout (references not yet provided).

+ name
+ focus ( lower|upper, legs, arms, core...)
+ 

- has_many :exercises
- ? belongs_to :workout
	(a single routine needs to belong to many workouts)


### WorkVolume

This may(should) be so prevalent that having its own class to encapsulate the behaviour seems warranted.


### Exercise

Each returns a work volume,
weekly increase should not be > %10 (business logic).

- muscle groups (+ a coefficient by primary/secondary affected?)


### Set


### Rep


### GymAdmin $$$

These are maintainers and owners of gym establishments and equipment.

\* They are primary stakeholders (among others) to any business value from such a service as this one.
Meaning their business may be willing or capable to pay for it moreso than any one user.


### Buddy

Tracks related users that may share a workout or routine.


### User

Tracks data (improvements) accross all exercises for an individual.

- has many exercises
- has many routines
- has many workouts
- has many work_volumes
