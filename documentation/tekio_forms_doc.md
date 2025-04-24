
# Tekio Forms Documentation!

Welcome to the Tekio Forms Documentation.

## Documentations

- [Base Form Builder](/documentation/base_form_builder.md)

- [Form Section](/documentation/form_section.md)

- [Form Field](/documentation/form_field.md)

- [Text Form](/documentation/text_form.md)

- [Email Form](/documentation/email_form.md)

- [Number Form](/documentation/number_form.md)

## Example

This is a simple example for rapid testing.

    {
       "formKey":"my-form-key",
       "formFields":[
          //TextField
          {
            "fieldKey":"field-text-key",
            "fieldType":"textField",
            "fieldLabel":"text label",
            "fieldHint":"text hint",
            "maxLines": 2,
            "minLines": 5,
            "maxLength": 100
         }
       ]
    }

## Complex Example

This is a complete example to show whats possible to build.

    {
       "formKey":"my-form-key",
       "formFields":[
          //TextField
          {
            "fieldKey":"field-text-key",
            "fieldType":"textField",
            "fieldLabel":"text label",
            "fieldHint":"text hint",
            "maxLines": 2,
            "minLines": 5,
            "maxLength": 100
         }
       ]
    }
