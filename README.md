This application uses SQL Lite. Run rake db:migrate will create tables and some seed data.
There is no client side validation. All validations happen on the server, mostly in the models.
4 hours time is not enough for me to write both unit/functional tests and the full application.
So I choose to write the fully-working application.


PLEASE SEE THE URLS THAT IMPLEMENT THE STORIES BELOWS:

1. As the owner of the veterinary practice, I have two additional veterinary doctors Bob and Susan. I should
http://localhost:3000/doctor/index


2. As the receptionist of the veterinary practice, I should be able to schedule an appointment for a customer's pet with a specific veterinary doctor.
http://localhost:3000/appointments/new
 

3. As one of the practicing veterinary doctors, I should be able to record the following information about a customer's pet.
http://localhost:3000/pets/new


4. As a customer, I should be able to see when my pet is scheduled for their next appointment
http://localhost:3000/appointments/show/(:customer_id)
For example: http://localhost:3000/appointments/show/3

In a real system with the real login, the customer id will be stored in session, so there will not be the customer id in the url.