BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Test1','');
INSERT INTO "Account" VALUES(2,'Sample Account for Entitlements','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2021-10-28','Refrigerated','item d3-2','3');
INSERT INTO "Delivery_Item__c" VALUES(2,'2021-10-30','Refrigerated','item d3-4','3');
INSERT INTO "Delivery_Item__c" VALUES(3,'2021-10-23','Non-refrigerated','item d0-1','4');
INSERT INTO "Delivery_Item__c" VALUES(4,'2021-10-21','Non-refrigerated','Item d3','3');
INSERT INTO "Delivery_Item__c" VALUES(5,'2021-10-23','Frozen','item d0-2','4');
INSERT INTO "Delivery_Item__c" VALUES(6,'2021-10-23','Refrigerated','item d0-3','4');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-10-02T19:00:00.000+0000','Completed','1');
INSERT INTO "Delivery__c" VALUES(2,'2021-10-04T19:00:00.000+0000','Canceled','1');
INSERT INTO "Delivery__c" VALUES(3,'2021-10-30T19:00:00.000+0000','Requested','1');
INSERT INTO "Delivery__c" VALUES(4,'2021-10-06T19:00:00.000+0000','Scheduled','1');
COMMIT;
