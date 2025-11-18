# Database Normalization Report — Airbnb Clone System

## Objective
To design the database in **Third Normal Form (3NF)** by eliminating redundancy, ensuring dependency correctness, and improving data integrity.

---

## Entities Identified
- User
- Property
- Property_Image
- Booking
- Payment
- Review

---

## Normalization Steps

### **1NF - First Normal Form**
Requirements:
- Atomic values
- No repeating groups
- Unique rows

Action applied:
- Split property images into a separate **property_images** table to avoid repeated image URL fields in the property row.

---

### **2NF - Second Normal Form**
Requirements:
- Must be in 1NF
- No partial dependency on part of a composite key

Action applied:
- All tables use single-column primary keys, making partial dependencies impossible.

---

### **3NF - Third Normal Form**
Requirements:
- Must be in 2NF
- No transitive dependencies

Corrections applied:
- Payment details stored in **payments** table, not in bookings table.
- Review stored separately to avoid review duplication per property/user.

---

## Final Normalized Structure (Meets 3NF)
No non-key attribute depends on another non-key attribute, and all tables reference each other via foreign keys. This design supports scalability, prevents redundancy, and improves data consistency.

