# Base Form Builder!

This is the base form widget, its responsible to create the form.

## Fields

You can edit the following fields:

- formTile **(required)** - Form title.
- formSubTitle - Form subtitle.
- formKey **(required)** - Used to represent the form on the app.
- formSections - List of sections to build.

## Json Format

Json format to show those fields

    {
       "formTile":"form_title",
       "formSubTitle":"form_subtitle",
       "formKey":"form_key",
       "formSections":[
          //Add Sections here
       ]
    }
