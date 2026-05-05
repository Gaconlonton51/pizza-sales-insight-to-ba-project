# Golden Hour Combo Feature for Pizza Ordering App

## 1. Project Overview

This project translates pizza sales data insights into a Business Analyst software design project.

Based on the sales analysis, 12 PM was identified as the peak ordering time. From this insight, the project proposes a new feature called **Golden Hour Combo**, which automatically suggests a lunch combo to customers during peak hours.

The goal of this project is to demonstrate how a Business Analyst can turn a data insight into a software feature through business analysis deliverables such as business case, scope, business rules, requirements, process flow, wireframes, user stories, acceptance criteria, and test scenarios.

---

## 2. Business Problem

During lunch peak hours, customers tend to order pizza quickly, especially around 12 PM. However, the current app does not provide a quick combo suggestion, so customers still need to browse and select items manually.

This may increase decision time and reduce the opportunity to increase average order value.

---

## 3. Proposed Solution

Design a **Golden Hour Combo** feature that automatically displays a lunch combo popup during peak hours.

Customers can add the combo to cart with one click, proceed to checkout, and the system will check inventory and deduct stock after successful payment.

---

## 4. Business Objectives

- Reduce customer decision time during lunch peak hours.
- Increase average order value.
- Increase revenue during the 12 PM peak period.
- Improve the ordering experience on the Pizza App.
- Prevent overselling by checking inventory before checkout.

---

## 5. Target Users

| User Group | Description |
|---|---|
| Customer | Orders pizza through the mobile app |
| Store Manager | Manages pizza inventory and order preparation |
| Marketing Team | Creates and manages combo promotions |
| Product Owner | Monitors business performance and feature success |
| QA Tester | Tests the feature based on requirements and acceptance criteria |
| Developer | Builds the feature based on BA documents and wireframes |

---

## 6. Project Deliverables

- Business Case
- Project Scope
- Business Rules
- Functional Requirements
- Non-functional Requirements
- Process Flow
- Wireframes
- User Stories
- Acceptance Criteria
- Test Scenarios

---

## 7. Tools Used

- My Sql: Used to inspect the dataset structure, convert date and time fields, calculate revenue metrics, group orders by day and hour, and identify best-selling and worst-selling pizzas.
- Excel: Used for data analysis, pivot tables, dashboard creation, and identifying sales trends.
- Draw.io: Used to create the process flow diagram for the Golden Hour Combo feature.
- Figma: Used to create low-fidelity wireframes for the mobile app screens.
- GitHub: Used to document and present the project as a portfolio repository. 

---

## 8. Project Scope

### In Scope

- Display Golden Hour Combo popup during lunch peak hours.
- Check whether the Golden Hour campaign is active.
- Check combo item availability before showing the popup.
- Allow customers to add the combo to cart with one click.
- Show combo details in the cart.
- Allow customers to complete checkout.
- Deduct inventory after successful payment.
- Release reserved inventory if payment fails.

### Out of Scope

- Personalized combo recommendation.
- Loyalty point system.
- Delivery route optimization.
- Advanced admin dashboard.
- AI-based recommendation engine.

---

## 9. Business Rules

| Rule ID | Business Rule |
|---|---|
| BR01 | The Golden Hour Combo popup is only displayed during lunch peak hours, from 11:30 AM to 1:30 PM. |
| BR02 | The popup is shown only if the Golden Hour campaign is active. |
| BR03 | The system must check item availability before displaying the combo popup. |
| BR04 | If any item in the combo is out of stock, the combo popup will not be displayed. |
| BR05 | Customers can dismiss the popup and continue browsing the app normally. |
| BR06 | Customers can add the full combo to cart with one click. |
| BR07 | Once the combo is added to cart, the system reserves the required inventory temporarily. |
| BR08 | Inventory is deducted only after successful payment. |
| BR09 | If payment fails, the reserved inventory must be released. |
| BR10 | The popup should not be shown more than once in the same app session. |

---

## 10. Functional Requirements

| Requirement ID | Functional Requirement |
|---|---|
| FR01 | The system shall check the current time when the customer opens the app. |
| FR02 | The system shall verify whether the Golden Hour campaign is active. |
| FR03 | The system shall check the availability of all items included in the combo. |
| FR04 | The app shall display the Golden Hour Combo popup if the time, campaign, and inventory conditions are met. |
| FR05 | The customer shall be able to dismiss the popup. |
| FR06 | The customer shall be able to add the Golden Hour Combo to cart with one click. |
| FR07 | The system shall display the selected combo in the cart page. |
| FR08 | The system shall calculate the combo price, discount, delivery fee, and total amount. |
| FR09 | The customer shall be able to proceed to checkout from the cart page. |
| FR10 | The customer shall be able to select a payment method and place the order. |
| FR11 | The system shall deduct inventory after successful payment. |
| FR12 | The system shall release reserved inventory if payment fails. |

---

## 11. Non-functional Requirements

| Requirement ID | Non-functional Requirement |
|---|---|
| NFR01 | The popup should be displayed within 2 seconds after the customer opens the app. |
| NFR02 | The system should provide accurate inventory availability before showing the combo. |
| NFR03 | The feature should work on both iOS and Android devices. |
| NFR04 | The popup should not negatively affect the normal browsing experience. |
| NFR05 | Payment and customer information must be handled securely. |
| NFR06 | The system should log errors when inventory reservation or payment processing fails. |

---

## 12. Process Flow

```text
Start
↓
Customer opens Pizza App
↓
System checks current time
↓
Is current time between 11:30 AM and 1:30 PM?
├── No → Show normal homepage
└── Yes
    ↓
System checks Golden Hour campaign status
    ↓
Is campaign active?
├── No → Show normal homepage
└── Yes
    ↓
System checks combo inventory
    ↓
Is combo available?
├── No → Show normal homepage
└── Yes
    ↓
Display Golden Hour Combo Popup
    ↓
Customer action?
├── Dismiss → Close popup and show homepage
└── Add to Cart
    ↓
System reserves inventory
    ↓
Show Cart
    ↓
Customer proceeds to Checkout
    ↓
Payment success?
├── No → Release reserved inventory
└── Yes
    ↓
Deduct inventory
    ↓
Create order confirmation
    ↓
End

---

## 13. Wireframes

The wireframes below describe the key screens of the Golden Hour Combo feature. These are low-fidelity wireframes used to communicate screen structure and user interactions.

### 13.1 Home Page with Golden Hour Combo Popup

![Home Page Wireframe](home-popup-wireframe.png)

### 13.2 Cart Page

![Cart Page Wireframe](cart-page-wireframe.png)

### 13.3 Checkout Page

![Checkout Page Wireframe](checkout-page-wireframe.png)

---

## 14. User Stories and Acceptance Criteria

| Story ID | User Story | Priority | Acceptance Criteria |
|---|---|---|---|
| US01 | As a customer, I want to see a Golden Hour Combo popup during lunch time so that I can order quickly. | Must Have | Given the current time is between 11:30 AM and 1:30 PM, when the customer opens the app, then the system displays the Golden Hour Combo popup if the campaign is active and combo items are available. |
| US02 | As a customer, I want to dismiss the popup so that I can continue browsing the app normally. | Must Have | Given the popup is displayed, when the customer clicks “No, thanks”, then the popup closes and the customer remains on the homepage. |
| US03 | As a customer, I want to add the Golden Hour Combo to my cart with one click so that I do not need to select each item manually. | Must Have | Given the combo popup is displayed, when the customer clicks “Add to Cart”, then the system adds all combo items to the cart. |
| US04 | As a system, I want to check whether the Golden Hour campaign is active so that the popup is only shown during valid campaign periods. | Must Have | Given the current time is within the Golden Hour period, when the campaign is inactive, then the system does not display the combo popup. |
| US05 | As a system, I want to check combo item availability before displaying the popup so that customers cannot order unavailable items. | Must Have | Given one or more combo items are out of stock, when the customer opens the app during Golden Hour, then the popup is not displayed. |
| US06 | As a customer, I want to review the selected combo in my cart so that I can confirm the items and price before checkout. | Must Have | Given the customer adds the combo to cart, when the cart page is opened, then the combo items, quantity, subtotal, discount, delivery fee, and total amount are displayed. |
| US07 | As a customer, I want to proceed to checkout after reviewing my cart so that I can complete my order. | Must Have | Given the combo is in the cart, when the customer clicks “Proceed to Checkout”, then the system navigates to the checkout page. |
| US08 | As a customer, I want to choose a payment method so that I can pay for my order using my preferred option. | Should Have | Given the customer is on the checkout page, when payment methods are displayed, then the customer can view available options such as credit card, e-wallet, and cash on delivery. |
| US09 | As a system, I want to deduct inventory only after successful payment so that stock levels are updated correctly. | Must Have | Given the customer completes payment successfully, when the payment is confirmed, then the system creates the order and deducts inventory. |
| US10 | As a system, I want to release reserved inventory when payment fails so that the stock can be made available again. | Must Have | Given the payment fails, when the transaction is declined, then the system releases the reserved inventory and displays a payment failed message. |

---

## 15. Test Scenarios

| Test Case ID | Scenario | Expected Result |
|---|---|---|
| TC01 | Customer opens the app between 11:30 AM and 1:30 PM when the campaign is active and combo items are in stock. | Golden Hour Combo popup is displayed. |
| TC02 | Customer opens the app outside the Golden Hour period. | Golden Hour Combo popup is not displayed. |
| TC03 | Customer opens the app during Golden Hour but the campaign is inactive. | Golden Hour Combo popup is not displayed. |
| TC04 | Customer opens the app during Golden Hour but one combo item is out of stock. | Golden Hour Combo popup is not displayed. |
| TC05 | Customer clicks “Add to Cart” on the popup. | Golden Hour Combo is added to the cart successfully. |
| TC06 | Customer clicks “No, thanks” on the popup. | Popup closes and the customer stays on the homepage. |
| TC07 | Customer views the cart after adding the combo. | Cart page displays combo items, quantity, subtotal, discount, delivery fee, and total amount. |
| TC08 | Customer clicks “Proceed to Checkout”. | Checkout page is displayed. |
| TC09 | Customer views the checkout page. | Delivery information, payment method, and order summary are displayed. |
| TC10 | Customer completes payment successfully. | Order is created and inventory is deducted. |
| TC11 | Customer payment fails. | Reserved inventory is released and payment failed message is displayed. |
| TC12 | Customer opens the app again in the same session after dismissing the popup. | Golden Hour Combo popup is not shown again. |

---

## 16. Future Enhancements

- Personalized combo recommendations based on customer order history.
- A/B testing for different combo offers and popup designs.
- Loyalty point integration for repeat customers.
- Admin dashboard for campaign setup and performance tracking.
- Push notifications for Golden Hour promotions.
- Dynamic pricing based on demand, inventory, and peak hours.
- Alternative combo recommendation when one item is out of stock.

---

## 17. Project Summary

This project demonstrates how a Business Analyst can translate a data insight into a software feature design.

The original pizza sales analysis showed that 12 PM was the peak ordering period. Based on this insight, the Golden Hour Combo feature was proposed to improve the lunch-time ordering experience and increase business revenue.

As a BA project, this repository includes key deliverables such as business problem, proposed solution, project scope, business rules, functional requirements, non-functional requirements, process flow, wireframes, user stories, acceptance criteria, and test scenarios.

The project shows the ability to move from data insight to product thinking, then convert that idea into clear documentation for stakeholders, developers, and testers.
