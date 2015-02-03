#Boris Bikes 

We are building a system to manage the Boris Bike rental.

- It can keep track of a number of docking stations and the bikes

- It will allow users to rent the bikes and return them

- When the bikes brake they will be unavailable for rental.

- There will also be a garage to fix the bikes and a van to move the bikes between the stations and the garage.


##CRC

###Bike
can_be_broken
can_be_rented

###Dockingstation
can_accept_bike
can_release_bike unless broken
has_x_places and can_be_full


###User