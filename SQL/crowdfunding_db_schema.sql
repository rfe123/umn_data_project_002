﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaigns" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(50)   NOT NULL,
    "currency" VARCHAR(50)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(20)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_campaigns" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "categories" (
    "category_id" VARCHAR(20)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategories" (
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "subcategory" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategories" ("subcategory_id");

