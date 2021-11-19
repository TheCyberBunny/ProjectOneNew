import { LightningElement, api } from 'lwc';

import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import Tavern_Review from '@salesforce/schema/Tavern_Review__c';
import Tavern_Reviews_Name_FIELD from '@salesforce/schema/Tavern_Review__c.Name';
import Review_Reasons_FIELD from '@salesforce/schema/Tavern_Review__c.Review_Reasons__c';
import Stars_FIELD from '@salesforce/schema/Tavern_Review__c.Stars__c';

export default class componentOne extends LightningElement {
    @api objectApiName;
    @api recordId;

    objectApiName = Tavern_Review;

    fields =[Tavern_Reviews_Name_FIELD, Stars_FIELD, Review_Reasons_FIELD];

    //success message, currently not showing on success
    handleSuccess() {
        const toastEvent = new ShowToastEvent({
            title: 'Success',
            message: 'Thank you for your feedback',
            variant: 'success'
        });
        
        this.dispatchEvent(toastEvent);
    }
}