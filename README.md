# String Calculator – TDD Assignment (Incubyte)

This repository implements a `StringCalculator` class using the principles of **Test-Driven Development (TDD)**.

## ✅ Features

- Returns 0 for empty input
- Returns the number itself if only one number is passed
- Adds two or more comma-separated numbers
- Supports newline `\n` as a valid delimiter
- Supports custom single-character delimiters (e.g., `//;\n1;2`)
- Raises an exception for negative numbers with all negatives listed
- Ignores numbers greater than 1000
- Supports custom delimiters of any length (e.g., `//[***]\n1***2***3`)
- Supports multiple custom delimiters (e.g., `//[*][%]\n1*2%3`)
- Supports multiple delimiters of any length (e.g., `//[***][%%]\n1***2%%3`)

## 🧪 How to Run Tests

### 1. Clone the repository

```bash
git clone https://github.com/007vishalkp/string-calculator
cd string-calculator
```

### 2. Run tests:
```bash
bundle install
rspec
```

## 📁 Project Structure

```
├── lib/
│   └── string_calculator.rb       # Main implementation
├── spec/
│   ├── string_calculator_spec.rb  # RSpec test cases
│   └── spec_helper.rb             # RSpec config
├── Gemfile                        # Bundler dependencies
├── Gemfile.lock                   # Locked gem versions
├── .rspec                         # RSpec CLI options
└── README.md                      # Project overview
```

## 🔗 Submission

Hosted publicly at: [GitHub Repo Link Here](https://github.com/007vishalkp/string-calculator)
