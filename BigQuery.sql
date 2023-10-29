-- Business Intelligence Analyst Project Based Internship Program
-- Bank Muamalat and Rakamin Academy
-- Final Project


-- Query to get data from BigQuery

SELECT
  `bankmuamalat-403208.BankMuamalat.Orders`.Date as order_date,
  `bankmuamalat-403208.BankMuamalat.ProductCategory`.CategoryName as category_name,
  `bankmuamalat-403208.BankMuamalat.Products`.ProdName as product_name,
  (`bankmuamalat-403208.BankMuamalat.Products`.Price/100) as product_price,
  `bankmuamalat-403208.BankMuamalat.Orders`.Quantity as order_qty,
  (`bankmuamalat-403208.BankMuamalat.Orders`.Quantity*(`bankmuamalat-403208.BankMuamalat.Products`.Price/100)) as total_sales,
  `bankmuamalat-403208.BankMuamalat.Customers`.CustomerEmail as cust_email,
  `bankmuamalat-403208.BankMuamalat.Customers`.CustomerCity as cust_city,
FROM `bankmuamalat-403208.BankMuamalat.Orders`
  INNER JOIN `bankmuamalat-403208.BankMuamalat.Customers` ON `bankmuamalat-403208.BankMuamalat.Orders`.CustomerID = `bankmuamalat-403208.BankMuamalat.Customers`.CustomerID
  INNER JOIN `bankmuamalat-403208.BankMuamalat.Products` ON `bankmuamalat-403208.BankMuamalat.Orders`.ProdNumber = `bankmuamalat-403208.BankMuamalat.Products`.ProdNumber
  INNER JOIN `bankmuamalat-403208.BankMuamalat.ProductCategory` ON `bankmuamalat-403208.BankMuamalat.Products`.Category = `bankmuamalat-403208.BankMuamalat.ProductCategory`.CategoryID
ORDER BY 
  order_date;
