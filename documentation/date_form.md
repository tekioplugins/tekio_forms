
# Text Field Builder!

This is the date field form widget, its responsible to create the date field of the form.

## Fields

You can edit the following fields:

- **order** - Order on witch the field will be build.

- **fieldKey** **(required)** - Used to represent the field on the app.

- **fieldLabel** - Field label (normally a description of the field).

- **fieldType** **(required)**- This field needs to be **"dateField"**.

- **isMandatory** - If the field needs to be populated or not (true/false).

- **enabled** - If the field can be edited (true/false).

- **dateTimeType** - You can specefy what type of time picking is allowed. 
	- **"date"** - Only dates can be picked.
	- **"time"** - Only day times can be picked.
	- **"both"** - Both date and time can be picked.

## Json Format

Json format to show those fields

    {
	    "order":0,
	    "fieldKey":"field_key",
	    "fieldLabel":"Just a label",
	    "fieldType":"dateField", //MANDATORY to be dateField
	    "isMandatory":false,
	    "enabled": true,
		"dateTimeType": "date/time/both"
    }
