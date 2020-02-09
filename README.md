# Eiffel Testing Framework (ETF)

In most applications, there is the **User Interface** (UI) and then there is the **Business Logic**. To take the stock example of a bank ATM, a user might see the following UI:

![](images/withdraw.png)

At the UI, a user can do actions (or commands) such as deposit money, withdraw  noney, transfer money etc. 

The business logic is the part of the computer program that contains the rules that defines or constrains how a business operates. For example, when depositing money to an account, its balance should increase by the deposit, and when withdrawing the balance should not become negative. The data structures and algorithms involved in the business logic perform the behind-the-scenes data processing that is invisible to the user but is critical to keeping things running smoothly the business. 

## Decoupling the Model from User Interface
Such applications often use a pattern called Model-View-Controller (MVC) which is a software design pattern commonly used for developing user interfaces which divides the related program logic into three **loosely connected** elements. 

* The **Model** is the central component of the pattern that may be used to encode the business logic. It is the application's data structures and algorithms, <span style="color:red">independent of the user interface. </span> It directly manages the data, logic and rules of the application.
* The **View** represents the information in the model to the user via forms, charts, tables, etc. r chart for management and a tabular view for accountants.
* The **Controller** accepts input at the UI and converts it to commands for the model or view.

how data can be created, stored, and changed. It is contrasted with the remainder of the software that might be concerned with lower-level details of managing a database or displaying the user interface, system infrastructure, or generally connecting various parts of the program.
The central component of the pattern. It is the application's dynamic data structure, independent of the user interface.[5] It directly manages the data, logic and rules of the application.

We use ETF in EECS-3311 to decouple 
ETF adds the ability to introduce user requirements into a seamless process of software construction at a point before concrete user interfaces can be specified. A user writes an input grammar (input.txt) that describes all possible user input operations. The etf command operating on the input grammar generates code that takes care of parsing input commands. The software designer can then focus on developing the business logic (the model).

ETF allows software developers to produce use cases that can be turned into acceptance tests, and that then free the developer to develop the business logic while not losing sight of the user requirements. This allows requirements to become part of a seamless development from requirements to implemented code, and allowing change even at the level of requirements.