# Text Field!

Add a description here later

## Fields

You can edit the following fields:

 - fieldKey **(required)**- field that represents the key value that represents the field, this needs to be unique.
 - fieldType **(required)** this needs to be of type **textField**
 - fieldLabel **(required)** 
 - isRequired
 - minLenght - the minimum length that the text needs to have. 
 - maxLenght - the maximum lenght that the text can have.

## Json Format

Json format to show those fields

    {
       "order":0,
       "fieldKey":"field-1",
       "fieldName":"Name",
       "fieldType":"text",
       "isMandatory":false,
       "minLength":6,
       "maxLength":13,
       "regexValidation":"your_regex_here"
    }
