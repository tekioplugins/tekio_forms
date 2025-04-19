# Section Form Builder!

This is the section form widget, its responsible to create the sections of the form.

## Fields

You can edit the following fields:

- order - Order on witch the section will be build.
- sectionTitle **(required)** - Section title.
- sectionSubtitle - Section subtitle.
- sectionKey **(required)** - Used to represent the section on the app.
- subSections - List of sub sections to build.

## Json Format

Json format to show those fields

    {
       "order":0,
       "sectionKey":"first-section",
       "sectionTitle":"Section 1",
       "sectionSubtitle":"Fill section 1",
       "subSections":[
          
       ]
    }
