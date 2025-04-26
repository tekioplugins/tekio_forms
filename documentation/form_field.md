# Form Section!

Widget that will render the field with its constraints and options.

## Fields

You can edit the following fields:

- **fieldKey (required)** - Field that represents the key value that represents the field, this needs to be unique.
- **order** - As the form config receives a list of section, this field helps sorting, if null will present on the order that it is on the metadata.
- **groupingKey (required)** - Field that represents will allow grouping within the same section. The fields with the same **groupingKey** will render together in a wrap.
- **fieldName** - String to be displayed as the name of the field.
- **fieldHint** - String to be displayed as the hint of the field.
- **fieldType (required)** - Enum to enable the rendering of the desired field. Our logic will pick up this value and use it to render the correct form field widget.
- **isMandatory** - Boolean to set as mandatory. If true, the form validator will ensure that the field has value.
- **minLength** - Int to set the min char length of the field value. If != null, the form validator will ensure that the field has at least the **minLength** character.
- **maxLength** - Int to set the max char length of the field value. If != null, the form validator will ensure that the field has at less or equal than **maxLength** character.
- **minValue** - Int to set the min value for the field value. If != null, the form validator will ensure that the field value/quantity is at least **minValue**. Applicable in number fields, dates and image inputs.
- **maxValue** - Int to set the max value for the field value. If != null, the form validator will ensure that the field value/quantity is at less or equal to **maxValue**. Applicable in number fields, dates and image inputs.
- **regexValidation** - String to set the regex for the field. If != null, the form validator will ensure that the field meets the **regexValidation** requirements.
- **options** - List of options to be displayed on checkbox fields, radio buttons & dropdowns.



## Json Format

Json format to show those fields

    {
        "order": 0,
            "groupingKey": "name-group",
            "fieldKey": "field-1",
            "fieldName": "Name",
            "fieldHint": "Name",
            "fieldType": "text",
            "isMandatory": false,
            "minLength": 0,
            "maxLength": 13,
            "minValue": 18,
            "maxValue": 99,
            "maxLines": 5,
            "regexValidation": "your_regex_here",
            "options": [
            {
                "order": 0,
                "optionKey": "opt-1",
                "optionName": "option 1"
            }
            ]
    }
