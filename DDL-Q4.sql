update t_doctor set fees =350  
			where (specialization ='ENT' and  doctor_name like '%J');
		select * from t_doctor;
