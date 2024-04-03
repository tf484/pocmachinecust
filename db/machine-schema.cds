using {
  cuid
} from '@sap/cds/common';

entity groups:cuid{  
  groupID : String;
  description: String;
  versions : Composition of many GroupVersion on versions.groupID = $self ;
}

entity GroupVersion:cuid{
  groupID : Association to groups;   
  limitsGroupVersion: Composition of one LimitsGroupVersion on limitsGroupVersion.groupVersionID = $self;
}

entity LimitsGroupVersion:cuid{  
  groupVersionID : Association to GroupVersion;
  value1: Integer;
  value2: Integer;
  dimensionLimit: Composition of many MachineDimensionLimits on dimensionLimit.limitGroupVersion = $self;
}

entity MachineDimensionLimits{
  limitGroupVersion: Association to  LimitsGroupVersion;
  limitType: Association to LimitTypes;
  min: Integer;
  max: Integer;
  unit: String(3);
}

entity LimitTypes{
  key limitType :String;
  description: String;
}