
# Retail information of the SuperStore.
(selected topic)

###  2nd Deliverable info, at the very bottom.


_______________________________________________

### Summary
_______________________________________________



## Reason why we selected this topic:

- Information gathered from a trusted source related to commercial registries of an International Vendor. https://www.kaggle.com/shekpaul/global-superstore

- This data model can be also aplicable to other markets being multi-purpose.

- Its versatility can also help us to apply concepts such as ETL (Extract, Transform and Loading), Data Engineering and Machine Learning.


## Description of the data source

- Real information from a trusted source.

- The database contains 50k+ registries.

- Sales data from 2011 to 2014.

- Information in a CSV file.

----------------------------------------------
![Database](Imgs_Readme/database.png)
----------------------------------------------
This will be the Database Schema:

![Database_Schema](Imgs_Readme/DatabaseSchema.png)


![Superstore_DataBase_Diagram](https://user-images.githubusercontent.com/83261520/139514694-c756ca3f-afd8-48dc-85b5-b17628118887.png)

----------------------------------------------

## Questions we hope to answer with the data 

- Which territory manager is the most profitable? 
- Which territory is the most efficient (%)? 
- Shipping cost by region / country / market / city 
- Sales by Category 
- Sales by Sub-Category 
- Sales by Segment 
- % returns
- Forecast sales. Regression model based on % expected
- What category suffered the biggest change from one year to another?
- Positive and negative
- Try to explain why (hypothesis)

To be confirmed: 
New category introduction. Sales history weighted with similar products. For instance  "Tablets"
- TV's are similar in 35%
- Mobile phones are similar in 60%
- Using similarities and predict the demand of a new category or product

----------------------------------------------

The mockup for the Machine Learning would be as follows:

![ML_Schema](Imgs_Readme/ML_Schema.png)

----------------------------------------------

## Description of the communication protocols 
The team has agreed to maintain communication on a daily basis through the following channels:
- Slack
- Whatsapp
- Mail
- Github
During the project the team is considering some brainstorming sessions as well as design thinking reviews.

#### Individual Branches already set in GitHub, so the team members will be pushing code and related information properly.

![Branches](Imgs_Readme/Branches.png)

----------------------------------------------

Team 2 
- BootCamp Data Analytics
- June - November 2021
- All rights reserved


![Gantt](Imgs_Readme/gantt.png)


## Machine Learning Model

The main goal of the developed machine learning model was to come up with a model that could tell if an order was going to be profitable or not. To acomplish such task the following requisites were done:

### Data preprocessing

The dataset contained the following information:

![image](https://user-images.githubusercontent.com/83261520/140445979-d7eaf369-b703-4f14-94eb-cc247a2528bf.png)

Through exploration of the dataset the following conclusions and actions took place:

- The size of the dataset had over 50,000 records wich is a good amount for a Machine Learning Model.
- Some columns needed to be transformed to a different data type, for example, columns 'ship_date' and 'order_date'.
- There were certain columns than contained null values ('postal_code','person','return'), therefore, needed to be discarded for the model.
- Not all columns could be used for the model as some of them had values that are not suitable for machine learning and needed to be dropped.
- Some columns could be added based on information for other columns in order to be used for the machine learning model.

### Feature engineering and preliminary feature selection, including the decision-making process

After the exploration was done, the following columns were dropped due to the fact that they did not have relevant information that could be used to train the model: 

'row_id',
'order_id',
'customer_id',
'customer_name',
'postal_code',
'product_id',
'product_name',
'ship_date',
'city',
'state',
'country',
'order_date',
'sub_category',
'market',
'profit',
'person',
'return'

From the column 'profit' we got our dependant variable (y), a new column was created from this called 'profit_classification', where the values greater 0 were classified with a 1 and values lesser than 0 were classified with 0.

For our independent variables (X) the following were chosen as we considered these were relevant to predit the outcome of profit: 'sales', 'quantity', 'ship_mode', 'segment', 'region', 'category', 'discount', 'shipping_cost', 'order_priority', 'week_day', 'month_number'. Some of these variables needed transformation as they were categorical values, using OneHotEncoder the following variables were transformed: 'ship_mode', 'segment', 'region', 'category', 'order_priority'.

### Description of how data was split into training and testing sets

The dataset was split 75% for training and 25%, the reson for this is the defaul value of train_test_split function as it is based in a thumb rule for machine learning models.

### Explanation of model choice, including limitations and benefits

Logistic Regression was chosen for this purpose as it is a simple yet practical model for our goal. The reason behind this decision is beacuse is a classification model that can easily tell us in a binary way if an order will be either profitable (1) or not profitable (0). The limitations of the model is that as it is binary it could not tell us a quantity, meaning that if an order is profitable it can not tell the amount for example.

### Explanation of changes in model choice
### Description of how they have trained the model thus far, and any additional training that will take place
### Description of current accuracy score
### Description and explanation of model’s confusion matrix, including final accuracy score

_______________________________________________

# Contents of repository 2nd Deliverable

_______________________________________________


- Machine Learning Model - file name: **Superstore_ML_Model.ipynb**

- Entity relationship diagram (ERD) - file name: **Superstore_DataBase_Diagram.png**

- Superstore databease SQL - file name: **superstore_database.sql**

- Presentation Second Deliverable - file name: **Presentation_2nd_Deliverable.pdf**

link: https://docs.google.com/presentation/d/1kp4-RlbhRlEGugGXvVQOMgmM1YDX2mrh/edit?pli=1#slide=id.p11    

