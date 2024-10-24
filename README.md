# Email Newsletter App (Rust)

This project is a fully functional email newsletter application built with Rust, following the guidance from the *Zero to Production in Rust* book. The app allows users to register, confirm their email addresses, and manage newsletter subscriptions. It emphasizes security, performance, and scalability using modern Rust ecosystem tools and practices.

## Features

- **User Registration and Authentication**: Secure user registration and login with email confirmation flow.
- **Subscription Management**: Users can subscribe to newsletters and manage their preferences.
- **Idempotent API Design**: Ensures that API requests (e.g., retries) are handled gracefully without unintended side effects.
- **Password Hashing**: Implements `argon2` for password hashing, ensuring strong security.
- **Third-Party Email Service Integration**: Integrates with third-party services for email delivery, like SendGrid or Mailgun.
- **Structured Logging**: Uses `tracing` for detailed, structured logging and better insights during development and production.
- **Test-Driven Development (TDD)**: Follows TDD practices with comprehensive unit and integration tests to ensure robustness and maintainability.

## Technologies Used

- **Rust**: The main programming language for building the backend.
- **actix-web**: A powerful and efficient web framework for Rust used to handle API requests.
- **PostgreSQL**: Relational database used to store user information and subscriptions.
- **sqlx**: An async, type-safe SQL toolkit that integrates seamlessly with PostgreSQL.
- **argon2**: A modern and secure hashing algorithm for storing passwords.
- **reqwest**: A Rust HTTP client used to communicate with external services, such as email providers.
- **tracing**: A framework for structured logging, allowing for better monitoring and debugging.

## Setup and Installation

### Prerequisites

- Rust
- PostgreSQL
- Cargo 
- An API key for an email service provider (I used PostMark)

### Steps

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/newsletter-app.git
    cd newsletter-app
    ```

2. **Install Dependencies**:
    Install the required Rust dependencies using Cargo:
    ```bash
    cargo build
    ```

3. **Set up the PostgreSQL Database**:
    Ensure PostgreSQL is installed and running on your machine. Create a new database for the app:
    ```bash
    createdb newsletter
    ```

4. **Configure Environment Variables**:
    Create a `.env` file in the root of the project and add your configuration:
    ```bash
    DATABASE_URL=postgres://username:password@localhost/newsletter
    EMAIL_API_KEY=your-email-api-key
    ```

5. **Run Database Migrations**:
    The project uses `sqlx` for migrations. Run the following command to apply the database schema:
    ```bash
    sqlx migrate run
    ```

6. **Run the Application**:
    After setting up the environment and database, you can start the app using Cargo:
    ```bash
    cargo run
    ```

    The API will be available at `http://localhost:8000`.

### Endpoints

- **POST /subscriptions**: Register a new subscription (requires email confirmation).
- **POST /confirm**: Confirm a user’s email address.
- **GET /health_check**: Basic health check endpoint.

## Running Tests

The project follows a Test-Driven Development (TDD) approach and includes unit and integration tests to verify functionality.

To run the test suite, use the following command:
```bash
cargo test
