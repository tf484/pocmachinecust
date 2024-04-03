using {groups as schemagroups} from '../db/machine-schema';
using {LimitTypes as schemaLimitTypes} from '../db/machine-schema';
using {LimitsGroupVersion as schemaLimitsGroupVersion} from '../db/machine-schema';
using {MachineDimensionLimits as schemaMachineDimensionLimits} from '../db/machine-schema';
@path: 'service/machine'
service MachineService {
   entity groups               as projection on schemagroups;
   annotate groups with @odata.draft.enabled;
   entity LimitsGroupVersion as projection on schemaLimitsGroupVersion;
   entity LimitTypes as projection on schemaLimitTypes;
   entity MachineDimensionLimits as projection on schemaMachineDimensionLimits;

}