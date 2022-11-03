use DDL;
CREATE TABLE t_doctor(
			 doctor_id int(11) NOT NULL PRIMARY KEY,
             doctor_name VARCHAR(25) NOT NULL,
             mobile_no int(11),
             email VARCHAR(30),
             specialization VARCHAR(10),
             fees int(7)
             );
             
create table t_hospital(
					patient_id VARCHAR(10) NOT NULL PRIMARY KEY,
					patient_name VARCHAR(30),
					gender CHAR(2),
					ailment VARCHAR(20) ,
					doctor_id int(11) ,
                    foreign key (doctor_id) REFERENCES t_doctor(doctor_id)
                    );
                    
CREATE TABLE t_hospital(
			available_doctor int(11),
            shift_time VARCHAR(20),
            foreign key (available_doctor) REFERENCES t_hospital(available_doctor)
            );
            
