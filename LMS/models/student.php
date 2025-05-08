<?php

class Student extends User {
    private string $studentId;
    private float $gpa;

    /**
     * Constructor to initialize student properties
     */
    public function __construct(string $name, int $id, string $emailAddress, int $password, string $studentId, float $gpa = 0.0) {
        parent::__construct($name, $id, $emailAddress, $password);
        $this->studentId = $studentId;
        $this->gpa = $gpa;
    }

    /**
     * Register for courses
     */
    public function registerCourses(): bool {
        // Course registration logic
        return true;
    }

    /**
     * Submit assignments
     */
    public function submitAssignments(): void {
        // Assignment submission logic
    }

    /**
     * Get course materials
     */
    public function getMaterials(): void {
        // Material retrieval logic
    }

    /**
     * View grades
     */
    public function viewGrades(): float {
        // Grade viewing logic
        return 0.0; // Placeholder
    }

    /**
     * View timetable
     */
    public function viewTimeTable(): void {
        // Timetable viewing logic
    }

    /**
     * View transcript
     */
    public function viewTranscript(): void {
        // Transcript viewing logic
    }

    /**
     * View certificate
     */
    public function viewCertificate(): void {
        // Certificate viewing logic
    }

    /**
     * Rate performance
     */
    public function ratePerformance(): void {
        // Performance rating logic
    }

    // Getters and setters
    public function getStudentId(): string {
        return $this->studentId;
    }

    public function getGpa(): float {
        return $this->gpa;
    }

    public function setGpa(float $gpa): void {
        $this->gpa = $gpa;
    }
}
?>