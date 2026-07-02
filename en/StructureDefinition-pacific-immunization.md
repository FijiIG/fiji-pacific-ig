# Pacific Immunization - Fiji Pacific Core Implementation Guide v0.2.1



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pacific-immunization",
  "url" : "https://fijiig.github.io/fiji-pacific-ig/StructureDefinition/pacific-immunization",
  "version" : "0.2.1",
  "name" : "PacificImmunization",
  "title" : "Pacific Immunization",
  "status" : "draft",
  "date" : "2026-07-02T02:47:53+00:00",
  "publisher" : "HealthInfoServices",
  "contact" : [{
    "name" : "HealthInfoServices",
    "telecom" : [{
      "system" : "url",
      "value" : "https://healthinfoservices.net"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.healthinfoservices.net"
    }]
  }],
  "description" : "# Profile of Immunizations for Pacific Patient\n\nThis profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history \nassociated with a patient. \n\n## Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (completed, entered-in-error, not-done)\n* vaccineCode - a vaccine code from the Immunization ValueSet\n* patient - a reference to a  Pacific Patient\n* occurrence[x] -  the vaccine administration date can be recorded using one of the two options below\n  * occurenceDateTime  (preferred)\n  * occurrenceString - this is a free text representation of the date or administration\n* lotNumber - is not mandatory but should be recorded if known\n\n## Terminology  \n\nImmunization.vaccineCode.coding shall be populated by one of the codes from the Immunization ValueSet where such a code exists\nfor the vaccine.  Additional codes may be used where no matching code is present.\n\n## Considerations & Decisions for DH TAG  \n\nThese considerations/decisions need to be agreed or validated by DH TAG for this profile.\n\nA. Terminology: For the draft version of this IG,  the Immunisation Valueset proposed has been taken from the set of CVX codes.  \nCVX is widely used internationally,  but alternative options include SNOMED GPS or MSupply codes (Tamanu).\n\nB. Confirm proposed constraints: select the Differential Table tab and review the current constraints\n\nC. Add any further constraints:  select the Snapshot Table tab below and determine if any additional elements should be required/must support etc.\n\n\n## Alignment with Regional IGs  \n\nThis profile aligns element constraints with AU Core FHIR Immunization profile - \nexcept that Australian specific vaccine coding and extensions have not been included.  \nNew Zealand Base FHIR specification does not include Immunization.\n\n## ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.status",
      "path" : "Immunization.status",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fijiig.github.io/fiji-pacific-ig/ValueSet/imm-vs"
      }
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fijiig.github.io/fiji-pacific-ig/StructureDefinition/pacific-patient"]
      }]
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Immunization.occurrence[x]:occurrenceDateTime",
      "path" : "Immunization.occurrence[x]",
      "sliceName" : "occurrenceDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.note",
      "path" : "Immunization.note",
      "mustSupport" : true
    }]
  }
}

```
