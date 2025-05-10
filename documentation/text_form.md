
# Text Field Builder!

This is the text field form widget, its responsible to create the text field of the form.

## Fields

You can edit the following fields:

- **order** - Order on witch the field will be build.

- **fieldKey** **(required)** - Used to represent the field on the app.

- **fieldHint** - Hint displayed on the field before input.

- **fieldLabel** - Field label (normally a description of the field).

- **fieldType** **(required)**- This field needs to be **"textField"**.

- **isMandatory** - If the field needs to be populated or not (true/false).

- **minLength** - Minimum length of the input.

- **maxLength** - Maximum length of the input (has a display counter).

- **enabled** - If the field can be edited (true/false).

- **maxLines** - Max lined to be displayed a one time on the field.

- **regexValidation** - Regex for specific field validation (Attention: The regex needs to work on json).

## Json Format

Json format to show those fields

    {
	    "order":0,
	    "fieldKey":"field_key",
	    "fieldLabel":"Just a label",
	    "fieldHint":"A hint",
	    "fieldType":"textField", //MANDATORY to be textField
	    "isMandatory":false,
	    "minLength":20,
	    "maxLength":250,
	    "enabled": true,
	    "maxLines":2,
		"regexValidation": "//Add regex here "
    }
