# Welcome to Tekio Forms Package!

Welcome to Tekio form.
This package allows you to build a complex form with just a json.
Based on [Flutter Form Builder](https://pub.dev/publishers/flutterformbuilderecosystem.com/packages)

## How to use it

The package is made in a way to work with the already existing app that you have with minimal code configuration.
Start by calling `TekioForm` and add the `TekioFormData` like this :

    TekioForm(
	    formData:  tekioFormData,
    )
You can use the example json configuration [here](/documentation/tekio_forms_doc.md).

Next add the form key `GlobalKey<FormBuilderState>()` 

	final  GlobalKey<FormBuilderState> _formKey  =  GlobalKey<FormBuilderState>();
	
    TekioForm(
	    key: _formKey,
	    formData:  tekioFormData,
    )
   
Using your own submit button validate the form and print the data,

    _formKey.currentState?.saveAndValidate();
    print(_formKey.currentState?.value);

For a full example take a look at the [app example](/example/)  

## Documentations
You can find the package full documentation on how to configure it [here](/documentation/tekio_forms_doc.md).