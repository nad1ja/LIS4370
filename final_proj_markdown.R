# PersonalFinanceTracker Function Documentation

This Markdown file provides documentation for the main functions of the PersonalFinanceTracker R package. These functions support personal expense tracking, budget monitoring, and financial visualization.

## 1. add_expense()

# Purpose
To add a new expense to the personal finance tracker.

# Inputs
- `date`: Date of the expense (format: "YYYY-MM-DD")
- `amount`: Numeric value representing the expense amount
- `category`: Character string for the expense category (e.g., "Groceries", "Rent")
- `description`: Optional description of the expense

# Output
- Returns an updated dataframe with the new expense included.

# Example
```r
add_expense("2025-04-12", 45.50, "Dining", "Lunch with friends")
```

---
  
## 2. import_expenses()
  
# Purpose
  To import expenses from a CSV or Excel file.

# Inputs
- `file_path`: File path to the CSV or Excel file

# Output
- Returns a dataframe of imported expenses.

# Example
```r
import_expenses("expenses_april.xlsx")
```

---
  
## 3. `categorize_expenses()`
  
# Purpose
  Automatically assigns categories to uncategorized expenses based on description keywords.

# Inputs
- `df`: A dataframe of expenses

# Output
- Returns a dataframe with an additional column for categorized expenses.

# Example
```r
categorized_data <- categorize_expenses(expenses_df)
```

---
  
## 4. `plot_expense_summary()`
  
# Purpose
  Creates a pie chart or bar plot summarizing expenses by category.

# Inputs
- `df`: A dataframe of expenses
- `type`: Chart type ("pie" or "bar")

# Output
- A `ggplot2` visual

# Example
```r
plot_expense_summary(categorized_data, type = "pie")
```

---
  
## 5. `track_budget()`
  
# Purpose
  Monitors spending against a user-defined budget.

# Inputs
- `df`: A dataframe of expenses
- `budget`: A named list of category budgets (e.g., `list(Groceries = 300, Rent = 1000)`)

# Output
- A summary table showing spending vs. budget

# Example
```r
track_budget(expenses_df, list(Groceries = 400, Rent = 1200))
```

---
 
