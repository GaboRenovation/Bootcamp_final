-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Orders" (
    "Row" ID   NOT NULL,
    "Order_ID" ID   NOT NULL,
    "Order_Date" Date   NOT NULL,
    "Ship_Date" Date   NOT NULL,
    "Ship_Mode" String   NOT NULL,
    "Customer_ID" String   NOT NULL,
    "Customer_Name" String   NOT NULL,
    "Segment" String   NOT NULL,
    "City" String   NOT NULL,
    "State" String   NOT NULL,
    "Country" String   NOT NULL,
    "Postal_Code" Int   NOT NULL,
    "Market" String   NOT NULL,
    "Region" String   NOT NULL,
    "Product" String   NOT NULL,
    "Categories" String   NOT NULL,
    "Sub-Categories" String   NOT NULL,
    "Product_Name" String   NOT NULL,
    "Sales" Money   NOT NULL,
    "Quantity" Int   NOT NULL,
    "Discount" Money   NOT NULL,
    "Profit" Money   NOT NULL,
    "Shipping" Money   NOT NULL,
    "Order_Priority" String   NOT NULL,
    CONSTRAINT "pk_Orders" PRIMARY KEY (
        "Order_ID"
     )
);

CREATE TABLE "Returns" (
    "Returned" String   NOT NULL,
    "Order_ID" String   NOT NULL,
    "Market" String   NOT NULL,
    CONSTRAINT "pk_Returns" PRIMARY KEY (
        "Order_ID"
     )
);

CREATE TABLE "People" (
    "Person" String   NOT NULL,
    "Region" String   NOT NULL,
    CONSTRAINT "pk_People" PRIMARY KEY (
        "Region"
     )
);

ALTER TABLE "Returns" ADD CONSTRAINT "fk_Returns_Order_ID" FOREIGN KEY("Order_ID")
REFERENCES "Orders" ("Order_ID");

ALTER TABLE "People" ADD CONSTRAINT "fk_People_Region" FOREIGN KEY("Region")
REFERENCES "Orders" ("Region");

