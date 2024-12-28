<h4 align="center">Hospital Appointment System SQL</h4>

<div align="center">
  <span style="display: inline-block; margin-right: 10px;">
    <img src="https://img.shields.io/badge/Database-MySQL-blue" alt="MYSQL">
  </span>
  <span style="display: inline-block; margin-right: 10px;">
    <img src="https://img.shields.io/badge/Database-MariaDB-blue" alt="MariaDB">
  </span>
</div>

<p align="center">
  <a href="#overview">Overview / Project Description</a> •
  <a href="#structure">Database Structure</a> •
  <a href="#installation">Installation / Setup Instructions</a> 
</p>

<div align="center">
  <img src="https://github.com/Froxerr/online_appointment_sql/blob/main/img/screenshot_1.png" alt="ss1">
</div>
<div align="center">
  <img src="https://github.com/Froxerr/online_appointment_sql/blob/main/img/screenshot_2.png" alt="ss2">
</div>
<div align="center">
  <img src="https://github.com/Froxerr/online_appointment_sql/blob/main/img/screenshot_3.png" alt="ss3">
</div>

<h2 id="overview">Project Description</h2>

This system is designed to manage and store patient, doctor, vaccination, and appointment information in a centralized database for a hospital. 
It ensures that key data like patients, doctors, vaccination schedules, and appointment times are organized and easily accessible. 
Users can efficiently manage patient appointments, track vaccination schedules, and oversee all health-related data. 
The goal of this project is to enhance the operational efficiency of hospital management and provide a more organized approach to delivering healthcare services.

<h2 id="structure">Database Structure</h2>

#### Cities Table
- **city_id** (Primary Key): Unique identifier for each city (Bigint, Auto Increment)
- **city_name**: Name of the city (String, Not Null)

#### Contacts Table
- **contact_id** (Primary Key): Unique identifier for each contact (Bigint, Auto Increment)
- **contact_name**: Name of the contact person (String, Not Null)
- **contact_email**: Email address of the contact (String, Not Null)
- **contact_subject**: Subject of the contact message (String, Not Null)
- **contact_message**: The message content from the contact (Text, Not Null)
- **created_at**: Timestamp of message creation (Timestamp)
- **updated_at**: Timestamp of message update (Timestamp)

#### Districts Table
- **district_id** (Primary Key): Unique identifier for each district (Bigint, Auto Increment)
- **district_name**: Name of the district (String, Not Null)
- **city_id** (Foreign Key): The city to which the district belongs (Bigint, References cities.city_id)

#### Addresses Table
- **address_id** (Primary Key): Unique identifier for each address (Bigint, Auto Increment)
- **address_name**: Name of the address (String, Not Null)
- **address_district_id** (Foreign Key): The district where the address is located (Bigint, References districts.district_id)
- **address_neighborhood**: Name of the neighborhood (String, Not Null)
- **address_zip**: ZIP code of the address (String, Not Null)

#### Appointment Capacities Table
- **appointment_capacity_id** (Primary Key): Unique identifier for appointment capacity (Bigint, Auto Increment)
- **appointment_hospital_id** (Foreign Key): The hospital address for which the appointment capacity is managed (Bigint, References addresses.address_id)
- **number_of_appointment**: Total number of appointments available (Integer, Not Null)
- **max_capacity**: Maximum capacity of appointments for the hospital (Integer, Not Null)
- **available_capacity**: Available appointments after considering existing bookings (Integer, Not Null)

#### Hospital Appointment Floors Table
- **hospital_appointment_floor_id** (Primary Key): Unique identifier for the hospital's appointment floor (Bigint, Auto Increment)
- **hospital_address_id** (Foreign Key): The address of the hospital (Bigint, References addresses.address_id)
- **hospital_room_number**: Room number of the appointment floor (Integer, Not Null)
- **hospital_block_name**: Block name where the appointment floor is located (String, Not Null)
- **hospital_floor_number**: Floor number in the hospital (Integer, Not Null)

#### Insurance Types Table
- **insurance_type_id** (Primary Key): Unique identifier for each type of insurance (Bigint, Auto Increment)
- **insurance_type_name**: Name of the insurance type (String, Not Null)

#### Insurances Table
- **insurance_id** (Primary Key): Unique identifier for each insurance (Bigint, Auto Increment)
- **insurance_type_id** (Foreign Key): Type of the insurance (Bigint, References insurance_types.insurance_type_id)
- **insurance_date_start**: Start date of the insurance coverage (Datetime, Not Null)
- **insurance_date_end**: End date of the insurance coverage (Datetime, Not Null)

#### Nurses Table
- **nurses_id** (Primary Key): Unique identifier for each nurse (Bigint, Auto Increment)
- **nurses_name**: Name of the nurse (String, Not Null)
- **nurses_surname**: Surname of the nurse (String, Not Null)
- **nurses_phone**: Contact number of the nurse (String, Not Null)
- **nurses_email**: Email address of the nurse (String, Not Null)
- **nurses_position**: Position or role of the nurse (String, Not Null)

#### Nurse Schedules Table
- **nurse_schedule_id** (Primary Key): Unique identifier for each nurse's schedule (Bigint, Auto Increment)
- **nurse_id** (Foreign Key): The nurse assigned to the schedule (Bigint, References nurses.nurses_id)
- **work_day**: Day of the week the nurse works (String, Not Null)
- **work_time_start**: Start time of the nurse's shift (Datetime, Not Null)
- **work_time_end**: End time of the nurse's shift (Datetime, Not Null)

#### Nurse Time Offs Table
- **nurse_time_off_id** (Primary Key): Unique identifier for time-off requests for nurses (Bigint, Auto Increment)
- **nurse_id** (Foreign Key): The nurse who requested the time off (Bigint, References nurses.nurses_id)
- **time_off_status**: Status of the time off (Tinyint, Not Null)
- **time_off_date_start**: Start date of the nurse's time off (Datetime, Not Null)
- **time_off_date_end**: End date of the nurse's time off (Datetime, Not Null)

#### Pages Table
- **page_id** (Primary Key): Unique identifier for each page (Bigint, Auto Increment)
- **page_name**: Name of the page (String, Not Null)
- **page_hash**: Hash value of the page (String, Not Null)

#### Patient Priorities Table
- **patient_priority_id** (Primary Key): Unique identifier for patient priorities (Bigint, Auto Increment)
- **patient_priority_name**: Name of the priority (String, Not Null)
- **patient_priority_description**: Description of the priority (String, Not Null)

#### Patients Table
- **patients_id** (Primary Key): Unique identifier for each patient (Bigint, Auto Increment)
- **patients_insurances_id** (Foreign Key): The insurance the patient holds (Bigint, References insurances.insurance_id)
- **patients_name**: First name of the patient (String, Not Null)
- **patients_surname**: Last name of the patient (String, Not Null)
- **patients_phone**: Contact number of the patient (String, Not Null)
- **patients_email**: Email address of the patient (String, Not Null)
- **patients_gender**: Gender of the patient (Char, Not Null)

#### Roles Table
- **role_id** (Primary Key): Unique identifier for each role (Bigint, Auto Increment)
- **role_name**: Name of the role (String, Not Null)

#### Specialties Table
- **specialty_id** (Primary Key): Unique identifier for each specialty (Bigint, Auto Increment)
- **specialty_name**: Name of the specialty (String, Nullable)

#### Doctors Table
- **doctor_id** (Primary Key): Unique identifier for each doctor (Bigint, Auto Increment)
- **specialties_id** (Foreign Key): The specialty the doctor belongs to (Bigint, References specialties.specialty_id)
- **address_id** (Foreign Key): The doctor's address (Bigint, References addresses.address_id)
- **doctor_name**: First name of the doctor (String, Not Null)
- **doctor_surname**: Last name of the doctor (String, Not Null)
- **doctor_phone**: Contact number of the doctor (String, Not Null)
- **doctor_email**: Email address of the doctor (String, Not Null)

#### Doctor Schedules Table
- **schedule_id** (Primary Key): Unique identifier for the doctor's schedule (Bigint, Auto Increment)
- **doctor_id** (Foreign Key): The doctor assigned to the schedule (Bigint, References doctors.doctor_id)
- **work_time_start**: Start time of the doctor's work shift (Datetime, Not Null)
- **work_time_end**: End time of the doctor's work shift (Datetime, Not Null)
- **status**: Status of the schedule (Tinyint, Not Null, Default 0)

#### Doctor Time Offs Table
- **time_off_id** (Primary Key): Unique identifier for doctor's time off (Bigint, Auto Increment)
- **doctor_id** (Foreign Key): The doctor who requested time off (Bigint, References doctors.doctor_id)
- **time_off_status**: Status of the time off request (Tinyint, Not Null)
- **time_off_date_start**: Start date of the doctor's time off (Datetime, Not Null)
- **time_off_date_end**: End date of the doctor's time off (Datetime, Not Null)

#### Hospital Appointments Table
- **hospital_appointment_id** (Primary Key): Unique identifier for each hospital appointment (Bigint, Auto Increment)
- **patient_id** (Foreign Key): The patient attending the appointment (Bigint, References patients.patients_id)
- **hospital_address_id** (Foreign Key): Address of the hospital (Bigint, References addresses.address_id)
- **hospital_appointment_floor_id** (Foreign Key): Floor of the appointment (Bigint, References hospital_appointment_floors.hospital_appointment_floor_id)
- **doctor_id** (Foreign Key): Doctor assigned to the appointment (Bigint, References doctors.doctor_id)
- **specialties_id** (Foreign Key): Specialty of the doctor (Bigint, References specialties.specialty_id)
- **appointment_name**: Name of the appointment (String, Not Null)
- **appointment_description**: Description of the appointment (String, Nullable)
- **appointment_capacity_id** (Foreign Key): Appointment capacity reference (Bigint, References appointment_capacities.appointment_capacity_id)
- **appointment_date_start**: Start date of the appointment (Datetime, Not Null)
- **appointment_date_end**: End date of the appointment (Datetime, Not Null)


<h2 id="installation">Installation / Setup Instructions</h2>

To clone and run this Laravel application, you'll need Git and Composer (for PHP dependencies) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/Froxerr/online_appointment_sql.git

# Go into the project directory (if applicable)
$ cd your-repository

# Set up the database
# First, ensure you have MySQL or MariaDB installed and running

# Log into MySQL (replace 'your_db_username' with your MySQL username)
$ mysql -u your_db_username -p

# Create a new database (for example 'online_appointments')
$ CREATE DATABASE online_appointments;

# Exit MySQL
$ exit

# Import the SQL dump into your database (ensure you're in the directory where online-appointment-dump.sql is located)
$ mysql -u your_db_username -p online_appointments < online-appointment-dump.sql

# Import the SQL dump into your database (ensure you're in the directory where online-appointment-dump.sql is located)
$ source /path/to/your/online-appointment-dump.sql;

# After importing the dump, you can list the tables to verify everything was imported correctly
$ SHOW TABLES;


```

> **Note**
> If you're using Linux Bash for Windows, [see this guide](https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/) or use `node` from the command prompt.


---


> GitHub https://github.com/Froxerr &nbsp;&middot;&nbsp;
> Linked https://www.linkedin.com/in/ibrahim-aral-99804a344

