# Hospital-Management-System
has_many :doctors, -> { where(role: "DOCTOR"), class_name: "User"}
