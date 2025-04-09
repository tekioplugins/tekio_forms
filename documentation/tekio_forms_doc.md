
# Tekio Forms Documentation!

  

Add a description here later

  

## Documentations

  

Small text for documentation

  

- [Base Form Builder](/documentation/base_form_builder.md)

- [Text Form](/documentation/text_form.md)

- [Email Form](/documentation/email_form.md)

- [Number Form](/documentation/number_form.md)

  

## Example

  

Simple example to show the possibility with pictures

  

## Complex Example

  

Complex example to show the possibility with pictures

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
                         "fieldType":"text",
                         "isMandatory":false,
                         "minLength":6,
                         "maxLength":13,
                         "regexValidation":"your_regex_here"
                      }
                   ]
                }
             ]
          }
       ]
    }
