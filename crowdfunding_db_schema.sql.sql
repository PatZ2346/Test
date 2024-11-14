CREATE TABLE "Category" (
    "category_id" VARCHAR(10) PRIMARY KEY,
    "category" VARCHAR(255) NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(10) PRIMARY KEY,
    "subcategory" VARCHAR(255) NOT NULL
);

CREATE TABLE "Contacts" (
    "contact_id" INT PRIMARY KEY,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" SERIAL PRIMARY KEY,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" DECIMAL NOT NULL,
    "pledged" DECIMAL NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(2) NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(10),
    "subcategory_id" VARCHAR(10),
    FOREIGN KEY ("category_id") REFERENCES "Category" ("category_id"),
    FOREIGN KEY ("subcategory_id") REFERENCES "Subcategory" ("subcategory_id")
    FOREIGN KEY ("contact_id") REFERENCES "Contacts" ("contact_id")
);