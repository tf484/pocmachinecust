using MachineService as service from '../../srv/machine-service';
using from '../../db/machine-schema';

annotate service.groups with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },
        {
            $Type : 'UI.DataField',
            Value : groupID,
            Label : 'groupID',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
    ]
);
annotate service.groups with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'general',
            ID : 'general',
            Target : '@UI.FieldGroup#general',
        },
    ],
    UI.FieldGroup #general : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : description,
                Label : 'description',
            },{
                $Type : 'UI.DataField',
                Value : groupID,
                Label : 'groupID',
            },],
    }
);
annotate service.groups with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'versions',
            ID : 'versions',
            Target : 'versions/@UI.LineItem#versions',
        },
    ]
);
annotate service.GroupVersion with @(
    UI.LineItem #versions : [
        {
            $Type : 'UI.DataField',
            Value : limitsGroupVersion.groupVersionID_ID,
            Label : 'groupVersionID_ID',
        },{
            $Type : 'UI.DataField',
            Value : limitsGroupVersion.ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : limitsGroupVersion.value1,
            Label : 'value1',
        },{
            $Type : 'UI.DataField',
            Value : limitsGroupVersion.value2,
            Label : 'value2',
        },]
);
annotate service.GroupVersion with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'generalVersion',
            ID : 'generalVersion',
            Target : '@UI.FieldGroup#generalVersion',
        },
    ],
    UI.FieldGroup #generalVersion : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : groupID.description,
                Label : 'description',
            },{
                $Type : 'UI.DataField',
                Value : groupID.groupID,
                Label : 'groupID',
            },{
                $Type : 'UI.DataField',
                Value : limitsGroupVersion.value1,
                Label : 'value1',
            },{
                $Type : 'UI.DataField',
                Value : limitsGroupVersion.value2,
                Label : 'value2',
            },],
    }
);
