CKEDITOR.editorConfig = function( config ) {
    config.toolbarGroups = [
        '/',
        { name: 'styles', groups: [ 'styles' ] },
        { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
        { name: 'editing', groups: [ 'selection', 'find', 'spellchecker', 'editing' ] },
        { name: 'forms', groups: [ 'forms' ] },
        { name: 'links', groups: [ 'links' ] },
        { name: 'tools', groups: [ 'tools' ] },
        { name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
        '/',
        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
        { name: 'insert', groups: [ 'insert' ] },
        { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
        { name: 'colors', groups: [ 'colors' ] },
        { name: 'others', groups: [ 'others' ] },
        { name: 'about', groups: [ 'about' ] }
    ];

    config.removeButtons = 'Save,NewPage,Preview,Print,Templates,ImageButton,Form,Checkbox,Radio,TextField,Textarea,Select,Button,HiddenField,Image,Flash,PageBreak,Iframe,About,PasteText,PasteFromWord,SelectAll,CreateDiv,Language,BidiRtl,BidiLtr,Anchor,Styles';
};