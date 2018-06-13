trigger DisableFileShare on ContentDocumentLink (before insert) {
    for (ContentDocumentLink cdl : trigger.new) {
        cdl.addError('Oppsss...Sorry, you cannot share this file.');
    }
}