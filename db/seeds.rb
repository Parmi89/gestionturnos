puts 'creando user_doctor'
UserDoctor.create(email:'doctor@example.com', password:'123123')


puts 'creando user'
User.create(email:'administration@example.com', password:'123123')


puts 'creando patient'
Patient.create(first_name:'PacNombre1', last_name:'PacApellido1', dni: "123123" )
Patient.create(first_name:'PacNombre2', last_name:'PacApellido2', dni: "123123" ) 
Patient.create(first_name:'PacNombre3', last_name:'PacApellido3', dni: "123123" )
Patient.create(first_name:'PacNombre4', last_name:'PacApellido4', dni: "123123" )
Patient.create(first_name:'PacNombre5', last_name:'PacApellido5', dni: "123123" )


puts 'creando doctor'
Doctor.create(first_name:'DocNombre1', last_name:'DocApellido1')
Doctor.create(first_name:'DocNombre2', last_name:'DocApellido2')
Doctor.create(first_name:'DocNombre3', last_name:'DocApellido3')
Doctor.create(first_name:'DocNombre4', last_name:'DocApellido4')
Doctor.create(first_name:'DocNombre5', last_name:'DocApellido5')
