# Data Analytics Power BI project

## Description

The goal of this project is to create a detailed and comprehensive quarterly report for a medium-sized international retailer client. The project involves utilising the analysis and design capabilites of Microsoft Power BI to extract and transform data from diverse sources, design a powerful data model rooted in a star-based schema and construct a multi-page report that caters to the specific needs of C-suite executives.

The report will include the following componants:
- A high-level executive business summary
- Insights into the highest value customers segmented by sales region
- A detailed analysis of top-performing products categorised by type against their sales targets
- A visually appealing map visual that spotlights the performance metrics of their retail outlets across different territories

This project uses guidelines and a template given by AiCore designed to develop key data analytical and visualisation skills. It is split into ten milestones to make it readable and manageable for a beginner to follow.

## Milestone 2: Import the data into Power BI

This milestone consists of data loading, preparation and transformation.
Four tables are imported into Power BI via different methods:
- The 'Orders' table is imported through an Azure SQL Database and null or missing values are identified and removed
- The 'Products' table is imported as a .csv file and duplicates removed
- The 'Stores' table is imported via connection to Azure Blob Storage
- The 'Customers' table is imported as combined files from a folder, unused columns are deleted and new columns created.
All the columns in the dataset are renamed to match Power BI naming conventions, ensuring a consistent and clear presentation.

## Milestone 3: Create the data model

This milestone consists of constructing a full, functional data model. It involves the following steps:
- Building a comprehensive dates table to act as a basis for time intelligence in the data model.
- Building the star scheme data model, establishing relationships between key tables
- Creating a measures table of key measures to support analysis inclusing total revenue, orders and quarter-based indicators
- Creating date and geography hierarchies to allow drill down analysis in visuals

## Milestone 4: Set up the report

This milestone creates the foundaitons of the report including the essential report pages and navigation bar. It includes setting up the following pages:
- Executive summary
- Customer detail
- Product detail
- Stores map

## Milestone 5: Build the customer detail page

This milestone consists of creating a report page that focuses on customer-level analysis. The following visuals are created to display this:
- Card visuals for total distinct customers and revenue per customer
- A line chart of weekly distinct customers
- A table showing the top 20 customers by total revenue, showing the revenue per customer and the toal orders for each customer
- A donut chart showing number of cusotmers by country
- A bar chart showing number of customers by product caategory
- A set of three card visuals showing information about the top customer by revenue
- A date slicer

## Milestone 6: Create an executive summary page

In this milestone a report page for a high-level executive summary is created. This is to give an overview of the company's general performance to ensure that c-suite executives can quickly get insights and check outcomes against key targets. The following visuals are included:
- Card visuals for total profit, revenue and orders
- A graph of revenue against time
- A donut chart showing orders and revenue by country
- A bar chart of orders by category
- KPIs for Quarterly revenue, profit and orders
- A table of top 10 products

## Milestone 7: Create a product detail page

This milestone consists of creating a product detail page that gives insight to the product team which products are performing well.
- Card visuals to show which filters are selected
- Guage visuals to show performance against a quarterly target
- An area chart showing relative revenue performance over time
- A table showing the top 10 products for the selected filter
- A scatter graph of quantity ordered against profit per item
  
## Milestone 8: Create a stores map page

This milestone consits of creating a map visual that allows the regional managers to easily check the performance of the stores under their control. This includes the ability to track quarterly profit and revenue performance agaisnt set goals. Also included is the creation of stores tooltip and drilldown pages.

## Milestone 9: Cross-filtering and navigation

In this milestone the cross-filtering and navigation are ajusted to suit this partiuclar report.

## Milestone 10: Create metrics for users outside the company using SQL

In this milestone SQL queries are used to ensure that insights can be shared to a broader audience that may not have direct access to specialised visualisation tools. This includes the following:
- Printing a list of table and column names and exporting them to .csv files
- Querying the SQL database to answer key analytical questions, saving the queries and answers as .sql and .csv files
