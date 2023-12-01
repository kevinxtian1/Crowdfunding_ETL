-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/pqLuuY
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cd_id" key   NOT NULL,
    "contact_id" key   NOT NULL,
    "description" string   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" string   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" string   NOT NULL,
    "currency" string   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "catid" key   NOT NULL,
    "subcatid" key   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cd_id"
     )
);

CREATE TABLE "category" (
    "catid" key   NOT NULL,
    "category" string   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "catid"
     )
);

CREATE TABLE "subcategory" (
    "subcatid" key   NOT NULL,
    "subcategory" string   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcatid"
     )
);

CREATE TABLE "contacts" (
    "contact_id" key   NOT NULL,
    "First_Name" string   NOT NULL,
    "Last_Name" string   NOT NULL,
    "email" string   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "category" ADD CONSTRAINT "fk_category_catid" FOREIGN KEY("catid")
REFERENCES "campaign" ("catid");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcatid" FOREIGN KEY("subcatid")
REFERENCES "campaign" ("subcatid");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

