# Trello API Automation

- This project focuses on automating interactions with Trello's API, enabling seamless management of boards, lists, cards, and checklists.
- The automation is built around Postman collections and can be integrated into testing workflows.

---

## Features
- Create, update, and delete Trello boards.
- Manage lists within boards.
- Add, update, and delete cards in lists.
- Add and remove checklists in cards.
- Add and remove checkitems in checklists.
- Includes automated tests to ensure API response reliability.
- Generates detailed HTML Extra Reports for test results.

---

## Prerequisites

- **Node.js** (v20.12.0 or higher)
- **Postman** and **Newman** for API testing
- **Trello API Key and Token**

___
## Project Demo
- **Demo:**  [Trello API](https://drive.google.com/file/d/1RPWftITjctr6ofx-8km4oKEhwtOhMv-k/view?usp=drive_link)
___

## Setup

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/MustafaAbdelraouf/TrelloPostman.git
    cd <repository-folder>
    ```

2. **Environment Configuration:**
   Ensure the following environment variables are set in your Postman environment:
   - `Base_Url`: Base URL for Trello API (e.g., `https://api.trello.com`)
   - `Key`: Your Trello API Key
   - `Token`: Your Trello API Token
   

3. **Install Dependencies:**
   ```bash
   npm install -g newman newman-reporter-htmlextra
   ```

4. **Run the Automation:**
   Execute the Postman collection via Newman with HTML Extra Report:
   ```bash
   newman run Trello.postman_collection.json -e <environment-file>.json --reporters cli,htmlextra --reporter-htmlextra-export report.html
   ```
   This command will generate a detailed HTML report named `report.html`.


5. **Run via Postman:**
   - Open the `Trello.postman_collection.json` file in Postman.
   - Configure the environment variables (`Base_Url`, `Key`, `Token`).
   - Execute requests individually or as a collection run to verify functionality.

---

## Files and Directories

- `Run.bat`: Batch script for running the automation. Ensure it is configured with the correct paths and dependencies.
- `Trello.postman_collection.json`: Postman collection for Trello API.

---

## Key Postman API Requests

1. **Create a Board**
   - Method: POST
   - Endpoint: `/1/boards/`
   - Description: Creates a new board with specified parameters such as name and default lists.

2. **Get Board Details**
   - Method: GET
   - Endpoint: `/1/boards/{{my_board_id}}`
   - Description: Fetches details of the specified board.

3. **Manage Lists**
   - Create, Retrieve, Update, and Delete lists within a board to organize tasks.

4. **Manage Cards**
   - Add, Retrieve, Update, and Delete cards in lists to track individual tasks.

5. **Manage Checklists**
   - Add and Delete checklists in cards for more detailed task management.

6. **Manage Checkitems**
   - Add and Delete Checkitems in Checklists for more detailed task management.

---

## Test Scripts

- Response time validation: Ensures response time is less than 5 seconds.
- Dynamic variable extraction: Saves response data into variables for use in subsequent requests.

---

## Project Functionality

This project simplifies managing Trello workflows via automation. By leveraging Postman collections, you can:

- Programmatically create and manage Trello boards and lists.
- Assign cards and add detailed checklists and checkitems into it.
- Test API endpoints for performance and correctness.
- Generate HTML reports to visualize the results of automated tests.

The included Postman collection is designed to work with dynamic environments, making it reusable and adaptable to different setups. Detailed test scripts ensure robust validation of API functionalities.

---

## How to Run the Project

1. Ensure Node.js and Newman are installed on your system.
2. Set up your Postman environment variables (`Base_Url`, `Key`, `Token`).
3. Run the Postman collection using the provided `Run.bat` file or the Newman command.
4. Alternatively, execute the collection directly in Postman.
5. Review the `report.html` file for a detailed summary of test results, including passed/failed tests and performance metrics.

---

---