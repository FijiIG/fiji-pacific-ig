// Immunizations 
Profile: PacificImmunization
Parent: Immunization
Id: pacific-immunization
Title: "Pacific Immunization"
Description: "Profile of Immunizations for Pacific Patient"
* status 1..1 MS
* vaccineCode 1..1 MS
* vaccineCode from ImmVS (extensible)
* patient only Reference(PacificPatient)
* occurrence 1..1 MS
* lotNumber MS
* note MS

