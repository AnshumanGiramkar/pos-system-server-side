# Point of Sale Application using PHP

## Overview

This project is a Point of Sale (POS) application developed using PHP, HTML, Bootstrap-CSS, Javascript, phpMyAdmin for MySQL, AlertifyJs, SweetAlerts.JS, Ajax, and JQuery. The POS system is designed to facilitate sales transactions, manage inventory, and provide a user-friendly interface for both customers and store owners.

## Features

- User authentication and authorization
- Product management (add, edit, delete products)
- Sales transactions with real-time updates
- Inventory management
- Responsive and intuitive user interface

## Prerequisites

Before running the project, ensure you have the following:

- WAMPServer installed on your machine.
- A modern web browser.
- PHP, HTML, Bootstrap-CSS, Javascript, and MySQL knowledge.

## Setup

### 1. Create a Database on PHPMyAdmin

- Open your web browser and go to `http://localhost/phpmyadmin`.
- Log in with your credentials.
- Click on "Databases" and create a new database, e.g., `pos-system-php`.

### 2. Import Database Schema

- Inside the `pos-system-php` database, import the SQL file provided in the `database` directory of this project.

### 3. Configure Database Connection

- Open the `config.php` file in the project.
- Update the database connection details (hostname, username, password, database name) according to your PHPMyAdmin setup.

```php
<?php
// config.php

$hostname = "localhost";
$username = "your_username";
$password = "your_password";
$database = "pos-system-php";

// ...rest of the configuration
?>
```

### 4. Run the Project

- Copy the project folder into the `www` directory of your WAMPServer installation.
- Start WAMPServer and ensure it's running.
- Open your web browser and go to `http://localhost/your_project_folder`.

## Usage

- Log in with the provided credentials.
- Explore the POS system features.
- Make sales transactions, manage products, and monitor inventory.

## Contributors

- Anshuman Giramkar
- Shreyas Godse
- Snehal Gupta
- Pooja Indulkar

## License

This project is licensed under the [MIT License](LICENSE).

---

Make sure to replace placeholders like `root` with actual information. Additionally, provide any specific instructions or details that users need to know about running and using your POS application.
