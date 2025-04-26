# Base Form Builder!

This is the base form widget, its responsible to create the form.

## Fields

You can edit the following fields:

- formKey **(required)** - Field that represents the key value that represents the form, this needs to be unique.
- formSection **(required)** - List of sections to build.
- formTitle - String to be displayed on appbar. **If missing no app bar will render**
- formSubTitle - String to be displayed on appbar subtitle.

## Json Format

Json format to show those fields

    {
      "formTile": "Super Awsome Form",
      "formSubTitle": "Subtitle",
      "formKey": "my-form-key",
      "formSections": [
         //Add here subSections
       ]
    }
