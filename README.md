# PC16 Week 8: Dart Programming Fundamentals (Part 2)

**Student Name:** Ebuenga, Caryl Yasmin P. 
**Section:** BSIT 3.3 
**Course:** Mobile Development with Lab  

## Scenario Description
This Dart console program builds directly upon the Week 7 Tech Gadget Store scenario by implementing decision-making logic, iteration, modular functions, and robust error handling:

- **Function with Parameters & Return Value:** `processOrderBatch()` accepts a list of item prices and VIP status, processes the items, and returns the grand total amount.
- **Combined Loop & Conditionals (Inside Function):** A `for` loop iterates through the item prices, while `if/else` conditional logic categorizes purchases (Premium, Standard, Small) and applies VIP discounts.
- **Error Handling & Bad Input Testing:** A `try/catch` block inside the loop catches invalid negative prices (`-$50.0`) gracefully, displaying a clear error message without crashing the application.

## How to Run
Run the program in your terminal:
```bash
dart run
