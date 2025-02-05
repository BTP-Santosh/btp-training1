using btptraining1 as db from '../db/data-model';

service CatalogService {

    entity businesspartner as projection on db.bp; 
    entity address as projection on db.ad;

    entity combo @(cds.redirection.target: False) as projection on db.bp {
    BP_ID,
    BP_ROLE,
    EMAIL_ADDRESS,
    PHONE_NUMBER,
    FAX_NUMBER,
    WEB_ADDRESS,
    ADDRESS_GUID,
    COMPANY_NAME,
    LEGAL_FORM,
    CREATED_BY,
    CREATED_AT,
    CHANGED_BY,
    CHANGED_AT,
    CURRENCY_CODE,
    DUMMY_FIELD_BPA,
    APPROVAL_STATUS,
    ADDRESS_GUID.ADDRESS_TYPE,
    ADDRESS_GUID.CITY,
    ADDRESS_GUID.COUNTRY,
    ADDRESS_GUID.POSTAL_CODE,
    ADDRESS_GUID.LATITUDE,
    ADDRESS_GUID.LONGITUDE,
    ADDRESS_GUID.STREET
    
    };
}