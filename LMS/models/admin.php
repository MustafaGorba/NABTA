<?php
class Admin extends User {
    /**
     * Constructor to initialize admin properties
     */
    public function __construct(string $name, int $id, string $emailAddress, int $password) {
        parent::__construct($name, $id, $emailAddress, $password);
    }

    /**
     * Manage users
     */
    public function manageUsers(): void {
        // User management logic
    }

    /**
     * Manage courses
     */
    public function manageCourses(): void {
        // Course management logic
    }

    /**
     * Manage departments
     */
    public function manageDepartments(): void {
        // Department management logic
    }

    /**
     * Manage calendar
     */
    public function manageCalendar(): void {
        // Calendar management logic
    }

    /**
     * Rank students
     */
    public function rankStudents(): void {
        // Student ranking logic
    }

    /**
     * Generate reports
     */
    public function generateReports(): void {
        // Report generation logic
    }
}
?>