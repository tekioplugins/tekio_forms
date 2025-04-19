
# Tekio Forms Documentation!

Welcome to the Tekio Forms Documentation.

## Documentations

- [Base Form Builder](/documentation/base_form_builder.md)

- [Section Form Builder](/documentation/section_form_builder.md.md)

- [Subsection Form Builder](/documentation/subsection_form_builder.md.md)

- [Text Form](/documentation/text_form.md)

- [Email Form](/documentation/email_form.md)

- [Number Form](/documentation/number_form.md)

## Example

This is a simple example for rapid testing.

    {
       "formTile":"Super Awsome Form",
       "formSubTitle":"Subtitle",
       "formKey":"my-form-key",
       "formSections":[
          {
             "order":0,
             "sectionKey":"first-section",
             "sectionTitle":"Section 1",
             "sectionSubtitle":"Fill section 1",
             "subSections":[
                {
                   "order":0,
                   "subSectionKey":"fields-group-1",
                   "formFields":[
                      {
                         "order":0,
                         "fieldKey":"field-1",
                         "fieldName":"Name",
                         "fieldHint":"Name",
                         "fieldType":"text",
                         "isMandatory":false,
                         "minLength":0,
                         "maxLength":13,
                         "minValue":18,
                         "maxValue":99,
                         "maxLines":5,
                         "regexValidation":"your_regex_here",
                         "options":[
                            {
                               "order":0,
                               "optionKey":"opt-1",
                               "optionName":"option 1"
                            }
                         ]
                      }
                   ]
                }
             ]
          }
       ]
    }

