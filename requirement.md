# ER Diagram Requirements — ALX Airbnb Database Project

## Objective
Design a fully normalized **Entity–Relationship Diagram (ERD)** for an Airbnb-like system based on the provided project specification. The ERD must reflect all identified entities, attributes, and relationships, ensuring proper cardinalities and integrity.

---

## 📌 Identified Entities & Attributes

### 1️⃣ **User**
| Attribute | Description |
|-----------|-------------|
| user_id (PK) | Unique identifier |
| full_name | Complete name of user |
| email | Unique email address |
| phone | Contact number |
| password_hash | Encrypted password |
| created_at | Registration timestamp |

---

### 2️⃣ **Property**
| Attribute | Description |
|-----------|-------------|
| property_id (PK) | Unique identifier |
| owner_id (FK → User.user_id) | Property owner's user ID |
| title | Property name/title |
| description | Property details |
| location | Physical address |
| price_per_night | Cost per night |
| max_guests | Maximum allowed guests |
| created_at | Record creation time |

---

### 3️⃣ **Property_Image**
| Attribute | Description |
|-----------|-------------|
| image_id (PK) | Unique identifier |
| property_id (FK → Property.property_id) | Linked property |
| image_url | Image location |

---

### 4️⃣ **Booking**
| Attribute | Description |
|-----------|-------------|
| booking_id (PK) | Unique identifier |
| property_id (FK → Property.property_id) | Booked property |
| user_id (FK → User.user_id) | Guest booking |
| check_in | Arrival date |
| check_out | Departure date |
| status | Booking state |
| created_at | Created timestamp |

---

### 5️⃣ **Payment**
| Attribute | Description |
|-----------|-------------|
| payment_id (PK) | Unique identifier |
| booking_id (FK → Booking.booking_id) | Linked booking |
| amount | Paid amount |
| method | Payment method |
| status | Payment state |
| created_at | Timestamp |

---

### 6️⃣ **Review**
| Attribute | Description |
|-----------|-------------|
| review_id (PK) | Unique identifier |
| property_id (FK → Property.property_id) | Reviewed property |
| user_id (FK → User.user_id) | Reviewer |
| rating | Rating 1–5 |
| comment | Feedback text |
| created_at | Timestamp |

---

## 🔗 Relationship Definition

| Relationship | Type | Notes |
|--------------|------|--------|
| User → Property | 1:M | A user can own many properties |
| Property → Booking | 1:M | A property can be booked many times |
| User → Booking | 1:M | A user can create many bookings |
| Booking → Payment | 1:1 | Each booking has one payment transaction |
| Property → Property_Image | 1:M | Property can have multiple images |
| Property → Review | 1:M | Property can receive many reviews |
| User → Review | 1:M | A user can write many reviews |

---

## 🖥 Tools Allowed
Use any of the following:
- Draw.io (recommended)
- Lucidchart
- Figma
- Miro
- Whimsical
- ERDPlus

Export format: **PNG or PDF**  
Include your ERD file inside the **ERD folder**.


## ✔ Final Submission Must Include

| File | Description |
|------|-------------|
| `requirements.md` | ERD documentation (this file) |
| `airbnb_erd.png` or `airbnb_erd.pdf` | Final ER diagram |



**End of Document**
