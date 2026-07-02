# Immunization ValueSet - Fiji Pacific Core Implementation Guide v0.2.1

## ValueSet: Immunization ValueSet 

 
Immunization valueset based on until Fiji-Pacific valueset is developed 

 **References** 

* [Pacific Immunization](StructureDefinition-pacific-immunization.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "imm-vs",
  "url" : "https://fijiig.github.io/fiji-pacific-ig/ValueSet/imm-vs",
  "version" : "0.2.1",
  "name" : "ImmVS",
  "title" : "Immunization ValueSet",
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
  "description" : "Immunization valueset based on until Fiji-Pacific valueset is developed",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/sid/cvx"
    }]
  }
}

```
