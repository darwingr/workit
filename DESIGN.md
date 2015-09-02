Workout
	(is the actual event as it took place which follows a routine)

	Tracks workout metrics as they become trackable (and part of a routine or exercise?).

	has :exercises through :routine

Routine
	(is the pre-determined exercises to done in a workout)

	Each returns a total expected work volume,
	weekly increase should not be > %10 (business logic) to avoid burnout (references not yet provided).

Exercise
	Each returns a work volume,
	weekly increase should not be > %10 (business logic).

Set

Rep


User
	Tracks data (improvements) accross all exercises for an individual.

	has many exercises
	has many routines
	has many workouts
	has many work_volumes

Buddy
	Tracks related users that may share a workout or routine.


WorkVolume
	This may(should) be so prevalent that having its own class to encapsulate the behaviour seems warranted.

