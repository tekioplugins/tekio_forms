# Text Field!

Add a description here later

## Fields

You can edit the following fields:

 - fieldKey **(required)**- field that represents the key value that represents the field, this needs to be unique.
 - fieldType **(required)** this needs to be of type **textField**
 - fieldLabel used to show the label of the field
 - fieldHint used to show a hint for the field
 - maxLines used to restrict the max lines that can be shown at a time **(default is 1)**


## Json Format

Json format to show those fields

    {
       "fieldKey":"field-text-key",
       "fieldType":"textField",
       "fieldLabel":"text label",
       "fieldHint":"text hint",
       "maxLines": 10
    }
