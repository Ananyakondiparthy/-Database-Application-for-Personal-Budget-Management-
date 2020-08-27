# -Database-Application-for-Personal-Budget-Management-
Database Application for Personal Budget Management   

       	 Personal Money Budget App
 
 

 
INDEX
Final Report Contents:
·   	Business application description
·   	Swim Lane Diagrams
·   	Business process of the application
·   	Describe business metrics that will be generated
·   	Logical schema – Data model
·   	Physical schema – Database dictionary
·   	DML in form of a SQL script
·   	Database backup file with sample business data
·   	SQL queries for each table – create, insert, update, and delete
·   	SQL queries for business metrics
·   	Include results of running the query
·   	Include business metrics reports
·   	For delete & update queries show rows in table before and after delete query
·   	Project summary
▪ Summarize your experience with this exercise
▪ What was the hardest part of this project?
▪ What problems did you run against in this project?
▪ How did you solve these problems?
▪ If you were to do this project again, what methodology would you follow ▪ Suggestions for how to refine this project for the next class


 
1. Business application description:
Budget Management Application Domain: Financial management service
The project is about the database for a mobile app that will help its users in personal financial budget management. The users will be asked to enter personal information like name, age, financial goals, etc. Also, we will have options to store user's bank details, credit card details, and the loan details so any transactions from any of these can be fed into the app automatically. All this information can be saved at the time of registration (Sign up) to the app and also any other time user wants to update it. The expenses that are made using the bank accounts and cards of the user that are linked with this app will automatically be updated as "Transactions". These transactions are classified in "categories of purchases" (for example, rent, entertainment, utilities, travel expenses, education, etc). All these modes can be saved in the app for monitoring the expenses that a user makes. In addition, the user can save the recurring expenses like example monthly mobile bill payments, credit card dues, and loan installments. Using this data app will give a reminder to users to pay before the due date which we term as "Future Payments". Overall, this business application will give a clear view of the user’s budget and expenses. This can give us many interesting analytical findings like most spent categories, week wise spending’s, etc. Also, we can club many such reports to give the user an interactive dashboard of the transaction for a current and recent month.
 
 
 
2. Swim Lane Diagrams:
Use cases:
Case 1: Login Process:
User 1 downloads the app , subscribe to the service and then enters his personal details and financial information. User can maintain a passbook which can have multiple payments such as Wallet, net banking, credit cards so that he can track his accounts or balances credits and debits.
Case 2: User Transaction Process:
John goes to Target to purchase grocery for his home. He buys milk, bread which totalled to amount $20. John pays the bill with his credit card and immediately receives a SMS and Email from his credit card company. The app recognises from the transaction SMS/ Email and automatically categorises as ‘Grocery Expense’. The App reduces the grocery budget set by john by $20.
Case 3: New Categorization Process:
User_ 3 made a donation at GoodWill. The transaction is done through bank wire transfer and the details related to the payment is not specifically categorized in the system. In such a scenario, user can create his own category of spending area, so that transactions related to donations or any service related payments will fall into the specific section.
Case 4 : User Split Bill Process:
John and his three friends go out lunch where their total bill was $80 which he pays using his credit card. This bill should be equally divided among all of them. They all decided to pay him later. The app recognizes from the transactions sms received on John’s mobile phone and marks it as expense. John updates the transaction to mark it as split among contacts and selects his friends from his contact list. App marked that amount as loan given for these contacts.
Analytics use case:
1.	Create a report to demonstrate the category wise spendings for the user
2.	Create a report to display the summary of previous months spendings.
3.	Create a chart to display the week wise spendings.
4.	Report demonstrating the most spent categories and its comparison with previous months.
5.	Create a chart to display the months in which user overrun the budget.
 
