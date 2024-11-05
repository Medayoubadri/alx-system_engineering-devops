
# 0x06. Regular Expressions

## Project Overview
Welcome to the world of Regular Expressions (regex)! This project dives into the use of regex to solve various text-matching problems, from the simplest patterns to more advanced text extraction tasks. Whether you're finding words, validating phone numbers, or extracting data from complex logs, this project helps you wield the power of regex like a pro.

## Project Structure
This repository contains Ruby scripts that match specific text patterns as per the project requirements:

- **0-simply_match_school.rb**: Matches the word "School".
- **1-repetition_token_0.rb**: Matches strings with "hb" followed by 2-5 "t"s and ending with "n".
- **2-repetition_token_1.rb**: Matches "hbtn" with or without the "b".
- **3-repetition_token_2.rb**: Matches "hb" followed by one or more "t"s and ending with "n".
- **4-repetition_token_3.rb**: Matches "hb" followed by zero or more "t"s and ending with "n".
- **5-beginning_and_end.rb**: Matches strings that start with "h", end with "n", and have a single character in between.
- **6-phone_number.rb**: Matches a valid 10-digit phone number.
- **7-OMG_WHY_ARE_YOU_SHOUTING.rb**: Matches only uppercase letters from the input.
- **100-textme.rb**: Extracts the sender, receiver, and flags from a TextMe app log.

## Installation and Setup
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/alx-system_engineering-devops.git
   ```
2. Navigate to the `0x06-regular_expressions` directory:
   ```bash
   cd alx-system_engineering-devops/0x06-regular_expressions
   ```
3. Ensure Ruby is installed by running:
   ```bash
   ruby --version
   ```

## Usage
Each script accepts a single command-line argument and outputs the result based on the regex pattern it is designed to match.

### Example Usage:
```bash
./0-simply_match_school.rb "Best School"
./6-phone_number.rb 1234567890
./100-textme.rb 'Feb 1 11:00:00 ip-10-0-0-11 mdr: ...'
```

### Testing with `cat -e`:
To check the script outputs and visualize newlines, use:
```bash
./script_name.rb "input text" | cat -e
```

## Fun Fact
- Did you know that the word "regex" was coined by computing pioneer Stephen Kleene in the 1950s? But even more amusing, if you stare at a complicated regex pattern long enough, it starts to look like an encrypted cat meme.