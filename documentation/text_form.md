# Text Field!

This is the Text field it created the text field

## Fields

You can edit the following fields:

 - fieldKey **(required)** - Field that represents the key value that represents the field, this needs to be unique.
 - fieldType **(required)** - This needs to be of type **textField**.
 - fieldLabel - Used to show the label of the field.
 - fieldHint - Used to show a hint for the field.
 - maxLines - Used to restrict the max lines that can be shown at a time **(default is 1)**.
 - minLines - **(requires maxLines)** Used to restrict the min lines that can be shown at a time.
 - maxLength - Used to restrict the length of the text.

## Json Format

Json format to show those fields

    {
       "fieldKey":"field-text-key",
       "fieldType":"textField",
       "fieldLabel":"text label",
       "fieldHint":"text hint",
       "maxLines": 2,
       "minLines": 5,
       "maxLength": 100
    }
