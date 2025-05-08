<?php
class Course {
    private string $courseId;
    private string $departmentId;
    private string $title;
    private int $credits;

    /**
     * Constructor to initialize course properties
     */
    public function __construct(string $courseId, string $departmentId, string $title, int $credits) {
        $this->courseId = $courseId;
        $this->departmentId = $departmentId;
        $this->title = $title;
        $this->credits = $credits;
    }

    /**
     * Add material to the course
     */
    public function addMaterial(Material $material): void {
        // Material addition logic
    }

    /**
     * Add assignment to the course
     */
    public function addAssignment(Assignment $assignment): void {
        // Assignment addition logic
    }

    /**
     * Enroll student in the course
     */
    public function enrollStudent(Student $student): void {
        // Student enrollment logic
    }

    /**
     * Calculate average grade for the course
     */
    public function calculateAverageGrade(): float {
        // Grade calculation logic
        return 0.0; // Placeholder
    }

    // Getters and setters
    public function getCourseId(): string {
        return $this->courseId;
    }

    public function getDepartmentId(): string {
        return $this->departmentId;
    }

    public function getTitle(): string {
        return $this->title;
    }

    public function setTitle(string $title): void {
        $this->title = $title;
    }

    public function getCredits(): int {
        return $this->credits;
    }

    public function setCredits(int $credits): void {
        $this->credits = $credits;
    }
}

?>