# Dropdown Field Builder!

This is the dropdown field form widget, its responsible to create the dropdown field of the form.

## Fields

You can edit the following fields:

- order - Order on witch the field will be build.
- fieldKey **(required)** - Used to represent the field on the app.
- fieldName - .
- fieldHint - .
- fieldType - .
- isMandatory - .
- minLength - .
- maxLength - .
- minValue - .
- maxValue - .
- maxLines - .
- regexValidation - .
- options - .

## Json Format

Json format to show those fields

    {
       "order":0,
       "fieldKey":"field-1",
       "fieldName":"Name",
       "fieldHint":"Name",
       "fieldType":"text",
       "isMandatory":false,
       "minLength":0,
       "maxLength":13,
       "minValue":18,
       "maxValue":99,
       "maxLines":5,
       "regexValidation":"your_regex_here",
       "options":[
          {
             "order":0,
             "optionKey":"opt-1",
             "optionName":"option 1"
          }
       ]
    }
