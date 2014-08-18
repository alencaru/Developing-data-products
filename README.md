Developing-data-products
========================

That is my first app done with shiny.

---
If you want run this application you shuld first:

Install shiny in your R environment,

Download the two main data files:
- **tcar.csv**
- **tprice.csv**
Both of them are in the repo

Download the **ui.r** and the **server.R** scripts.


How to use the app.

On the left side bar you will see three data input types:
- Kilometers you wanna drive. This is an integer input.
- Box with a list of cars you can drive. 
- A button to submit your choices.

On the right side you will see your choices and a table with three columns.
- first column is **country name**
- second column is **price of gas per litre**
- third column is **the amout of cache you'll spend in each country to drive the km range you want**.

---

**Code explanation**

In the **server.R** file the main function (called *myfunction()*) is to get the km value input and the input car chosen. Then perform a calculation based in fuel consumption of each car and gas price in some contries.
