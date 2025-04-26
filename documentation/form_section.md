# Form Section!

Widget that will render a Tittle,subtitle & a list of fields

## Fields

You can edit the following fields:

- sectionKey **(required)** - Field that represents the key value that represents the section, this needs to be unique.
- order - As the form config receives a list of section, this field helps sorting, if null will present on the order that it is on the metadata.
- sectionTitle - String to be displayed at the beginning of the section.
- sectionSubTitle - String to be displayed right bellow the sectionTitle.
- formFields **(required)** - List of fields to be displayed.



## Json Format

Json format to show those fields

    {
      "order": 0,
      "sectionKey": "first-section",
      "sectionTitle": "Section 1",
      "sectionSubtitle": "Fill section 1",
      "formFields": [
         //Add here fields
       ]
    }
