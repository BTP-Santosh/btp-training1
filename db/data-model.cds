namespace btptraining1;

entity bp {

    CLIENT : String(3);
    key NODE_KEY : String(100);
    BP_ROLE : String(100);
    EMAIL_ADDRESS : String(100);
    PHONE_NUMBER : String(100);
    FAX_NUMBER : String(100);
    WEB_ADDRESS : String(100);
    ADDRESS_GUID : composition of ad;
    BP_ID : String(100);
    COMPANY_NAME : String(100);
    LEGAL_FORM : String(100);
    CREATED_BY : String(100);
    CREATED_AT : String(100);
    CHANGED_BY : String(100);
    CHANGED_AT : String(100);
    CURRENCY_CODE : String(100);
    DUMMY_FIELD_BPA : String(100);
    APPROVAL_STATUS : String(100);   

}

entity ad {

   CLIENT : String(3);
   key NODE_KEY : String(100);
   CITY : String(100);
   POSTAL_CODE : String(100);
   STREET : String(100);
   BUILDING : String(100);
   COUNTRY : String(100);
   ADDRESS_TYPE : String(100);
   VAL_START_DATE : String(100);
   VAL_END_DATE : String(100);
   LATITUDE : String(100);
   LONGITUDE : String(100);
   address : Association to one bp on address.ADDRESS_GUID = $self;
}
