# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

facility = Facility.create!(name: "Blue Alps Ski Camp")


patient = Patient.create!({
                               first_name: Faker::Name.first_name,
                               last_name: Faker::Name.last_name,
                               middle_name: Faker::Name.middle_name,
                               dob: Faker::Date.birthday,
                               gender: :female,
                               facility: facility,
                               mr: rand(20000...30000)
                           })


##############
#

admission = Admission.create!({
                              moment: Time.now,
                              patient: patient
                           })

allergy = patient.allergies.create!({ description: "Penicillin" })


diagnosis = admission.admission_diagnoses.create!({
                                          coding_system: "ICD10",
                                          code: "M25.5",
                                          description: "Pain in Joint"
                                        })

symptoms = admission.symptoms.create!({ description: "Pain, swelling, limited movement of right shoulder"})

observation = admission.observations.create!({ description: "No soft tissues were damaged" })

chronic_condition = patient.chronic_conditions.create!({
                                                 coding_system: "ICD10",
                                                 code: "I10",
                                                 description: "Essential (primary) hypertension"
                                             })

frequency_unit = OrderFrequency.create!({value: "q4", frequency_unit: :hr  })

medication = patient.medications.create!({
                                            name: "Acetaminophen",
                                            mass_unit: :mg,
                                            dosage: 1000,
                                            medication_route: :PO,
                                            frequency: frequency_unit,
                                            necessity: "relieve swelling"
                                         })

diag_procedures = patient.diagnostic_procedures.create!({
                                                          description: "exploratory radiography",
                                                          moment: 2.hours.ago
                                                        })

patient_diag = patient.diagnoses.create!({
                                           coding_system: "ICD10",
                                           code: "S42.8",
                                           description: "Fracture of other parts of shoulder and upper arm"
                                         })

treatment = patient.treatments.create!({
                                         description: "temporary bracing right shoulder",
                                         necessity: "restrict the motion"
                                       })
