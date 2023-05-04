# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

#-----Création de 20 patients-----
# 20.times do
#   user = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.unique.last_name)
# end

#-----Création de 20 docteurs-----
# 21.times do
#   spe = ["Anesthesiology", "Cardiology", "Dermatology", "Endocrinology", "Family Medicine", "Gastroenterology", "Hematology", "Infectious Disease", "Internal Medicine", "Nephrology", "Neurology", "Obstetrics and Gynecology", "Oncology", "Ophthalmology", "Orthopedics", "Otolaryngology", "Pediatrics", "Psychiatry", "Pulmonology", "Radiology", "Rheumatology", "Surgery", "Urology"]
#   user = Doctor.create!(
#     first_name: Faker::Name.first_name, last_name: Faker::Name.unique.last_name, 
#     specialty: spe.sample,
#     zip_code: Faker::Address.zip_code)
# end

#-----Création de 10 appointments-----
# 10.times do
#   current_doctors_id = Doctor.ids
#   current_patients_id = Patient.ids
#   user = Appointment.create!(
#     doctor_id: current_doctors_id.sample,
#     patient_id: current_patients_id.sample,
#     date: Faker::Date.in_date_period)
# end

#-----Création de 10 villes-----
# 10.times do
#   user = City.create!(
#     name: Faker::Address.unique.city)
# end

#-----Liaison doctors, patients et appointments à une villes (fait 3 fois)-----
# current_cities_ids = City.ids
# 21.times do |index|
#   user = Patient.find(index+1)
#   user.update(city_id: current_cities_ids.sample)
# end

#-----Création de 23 spécialité-----
# spe = ["Anesthesiology", "Cardiology", "Dermatology", "Endocrinology", "Family Medicine", "Gastroenterology", "Hematology", "Infectious Disease", "Internal Medicine", "Nephrology", "Neurology", "Obstetrics and Gynecology", "Oncology", "Ophthalmology", "Orthopedics", "Otolaryngology", "Pediatrics", "Psychiatry", "Pulmonology", "Radiology", "Rheumatology", "Surgery", "Urology"]
# 23.times do |index|
#   user = Speciality.create!(
#      name: spe[index])
# end

#Création de nouveaux rendez-vous et mise à jour des 10 premiers

# current_doctors_id = Doctor.ids
# current_patients_id = Patient.ids
# current_cities_id = City.ids
# current_spe_id = Speciality.ids
# 
# 11.times do |index|
#    user = Appointment.find(index+1)
#    user.update(speciality_id:current_spe_id.sample)
# end
# 
# 100.times do
#   user = Appointment.create!(
#     doctor_id: current_doctors_id.sample,
#     patient_id: current_patients_id.sample,
#     date: Faker::Date.in_date_period, 
#     city_id: current_cities_id.sample, 
#     speciality_id:current_spe_id.sample)
# end

require 'faker'
#Suppression de la colonne "specialty" dans doctor

100.times do
  user = Appointment.create!(
    doctor_id: current_doctors_id.sample,
    patient_id: current_patients_id.sample,
    date: Faker::Date.in_date_period, 
    city_id: current_cities_id.sample, 
    speciality_id:current_spe_id.sample)
end
