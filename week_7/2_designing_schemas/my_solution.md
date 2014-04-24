# U3.W7: Designing Schemas


#### I worked on this challenge [by myself]


## Release 0: Student Roster Schema
<!-- display your image inline here -->
![Student Roster Schema](/week_7/imgs/student_roster_schema.jpg)


## Release 1: One to Many Schema
<!-- display your image inline here -->
![One to Many](/week_7/imgs/one_to_many.jpg)


## Release 2: One to One Schema
<!-- display your image inline here -->
![One to One](/week_7/imgs/one_to_one.jpg)


## Release 3: Many to Many Schema
<!-- display your image inline here -->
![Many to Many](/week_7/imgs/many_to_many.jpg)


## Release 4: Design your own Schema
Description of what you're modeling: 
I am displaying database for e-commerce website
Join table was created between Orders and Products tables since they have many to many relationship.
Orders can include many products and products belongs to different orders.
There is customers table whose primary key is connected to foreign key of Orders table. 
They have one-to-many relationship because customers can have many orders and an order belongs to one customer  
![Own Schema](/week_7/imgs/own_schema.jpg)

<!-- display your one-to-one image inline here -->
<!-- display your many-to-many image inline here -->

## Release 5: Reflection

As a visual learner this was a fun and effective learning experience creating our own schema using gui sql designer. A lot of concepts in this chapter was revisited from introductory cs class that I took with coursera prior to starting phase 0. One to One schema concept was not taught by the coursers class. To state an example of this schema type, the attributes such as first_name and last_name can be separated into new table called name because name is unique to one user. Difficult part about this challenge was making your own schemas. Designing part was not difficult but coming up with situations where both many to many and one to many exist took longer.
