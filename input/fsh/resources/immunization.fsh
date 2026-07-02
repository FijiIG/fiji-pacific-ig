// Immunizations 
Profile: PacificImmunization
Parent: Immunization
Id: pacific-immunization
Title: "Pacific Immunization"
Description: """
Profile of Immunizations for Pacific Patient

This profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history 
associated with a patient. 

#### Mandatory elements  
The following elements must be recorded:
* status - one of the codes completed | entered-in-error | not-done
* vaccineCode - a vaccine code from the Immunization ValueSet
* patient - a reference to a  Pacific Patient
* occurrence[x] -  the vaccine administration date can be recorded using one of the two options below
  * occurenceDateTime  (preferred)
  * occurrenceString - this is a free text representation of the date or administration
* lotNumber - is not mandatory but should be recorded if known

#### Terminology  

Immunization.vaccineCode.coding shall be populated by one of the codes from the Immunization ValueSet where such a code exists
for the vaccine.  Additional codes may be used where no matching code is present.

#### Considerations & Alignment with Regional IGs

For the draft version of this IG,  the Immunisation Valueset proposed has been taken from the set of CVX codes.  
CVX is widely used internationally,  but alternative options include SNOMED GPS or MSupply codes (Tamanu).

This profile aligns element constraints with AU Core FHIR Immunization profile - 
except that Australian specific vaccine coding and extensions have not been included.  
New Zealand Base FHIR specification does not include Immunization.
"""
* status 1..1 MS
* vaccineCode 1..1 MS
* vaccineCode from ImmVS (extensible)
* patient only Reference(PacificPatient)
* occurrence[x] 1..1 MS
* occurrenceDateTime MS
* lotNumber MS
* note MS

