This application uses SQL Lite. Run rake db:migrate will create tables and some seed data.
There is no client side validation. All validations happen on the server, mostly in the models.
4 hours time is not enough for me to write both unit/functional tests and the full application.
So I choose to write the fully-working application.


PLEASE SEE THE URLS THAT IMPLEMENT THE STORIES BELOWS:

1. As the owner of the veterinary practice, I have two additional veterinary doctors Bob and Susan. I should
be able to track the following information about myself and my fellow veterinary doctors.

Name - must be no longer than 35 characters; value is required
Address
City
State
Zip - should be at most 5 digits
School Received Degree From
Years in Practice - must be value between 1-100

http://localhost:3000/doctor/index


2. As the receptionist of the veterinary practice, I should be able to schedule an appointment for a customer's pet with a specific veterinary doctor.
The appointment should contain the following information
Date of Visit - date cannot be in the past; value is required
Pet - required
Customer -required
Requires Reminder of Appointment
Reason for Visit - required

http://localhost:3000/appointments/new
 

3. As one of the practicing veterinary doctors, I should be able to record the following information about a customer's pet.
Name of Pet - required, no more than 35 characters
Type of Pet - must be a dog, cat, or bird
Breed - required, no more than 35 characters
Age - required
Weight - required
Date of Last Visit - required

http://localhost:3000/pets/new


4. As a customer, I should be able to see when my pet is scheduled for their next appointment
Pet's Name
Date of Next Appointment
Reason for Visit

http://localhost:3000/appointments/show/(:customer_id)
For example: http://localhost:3000/appointments/show/3

In a real system with the real login, the customer id will be stored in session, so there will not be the customer id in the url.