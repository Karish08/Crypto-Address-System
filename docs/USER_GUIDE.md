# User Guide: Cryptocurrency Address Collection and Categorization System

Welcome to the Cryptocurrency Address Collection and Categorization System. This guide walk you through how to run, access, and use the application.

---

## 1. Getting Started & Running the App

The entire stack is containerized using Docker. To spin up all services (MySQL, Redis, Backend, and Frontend):

1. **Build & Run**:
   ```bash
   docker-compose up --build -d
   ```
2. **Shut Down**:
   ```bash
   docker-compose down
   ```
   *Note: If you need to clear the database volume and start fresh, run:*
   ```bash
   docker-compose down -v
   ```

---

## 2. Accessing the Application

* **Frontend Dashboard**: Open your web browser and go to:
  `http://localhost`
* **API Documentation (Swagger)**: You can view and interact with the backend APIs directly via:
  `http://localhost:8080/swagger-ui/index.html`

---

## 3. Signing In & Bypassing the Chrome Security Warning

### Logging in with seeded Demo Credentials:
* **Username**: `demo_user`
* **Password**: `demo123`

### Note on Google Chrome Password Warning:
When logging in with the default password `demo123`, Google Chrome may pop up a warning:
> *"Change your password: The password you just used was found in a data breach."*

This is a security alert from Chrome warning you that `demo123` is a common, publicly leaked password. To continue:
1. Click **OK** on the Chrome dialog box.
2. Click the blue **Sign In** button again on the login screen.
3. For production or personal use, click the **Sign up** link and register a new account with a strong, secure password (e.g. `WalletSecure@2026!`).

---

## 4. Key Features walkthrough

### A. Dashboard Overview
* Displays total assets in USD, BTC equivalents, and ETH equivalents.
* Lists your recently active wallets and latest transaction activity.
* Shows a breakdown chart of your wallets grouped by blockchain network.

### B. Wallet Address Collection
1. Navigate to the **Addresses** tab.
2. Click **Add Address**.
3. Input the public address, select the blockchain (Bitcoin, Ethereum, Polygon, Solana, or BSC), and optionally assign it a category and friendly label.
4. Click **Refresh** to query the blockchain network for the live balance of the wallet.

### C. Address Categorization
* Create custom labels (e.g., "Personal Savings", "Mining Rewards", "Exchange Wallets") under the **Categories** tab to organize and segment your tracking.
