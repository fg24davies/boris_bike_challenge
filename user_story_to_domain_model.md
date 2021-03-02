# User Story 1

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

Nouns: user, bike, docking station

Verbs: use, like, release


# User Story 2 

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Nouns: person, bike

Verbs: use, working


Objects  | Messages
------------- | -------------
Person  |
Bike |  working_bike?
Docking Station | release_bike

Bike <--- (send message) -- working_bike? --- receive message --> true/false
Docking Station <--- (send message) -- release_bike --- receive message ---> a bike is free

Domain Model

   


