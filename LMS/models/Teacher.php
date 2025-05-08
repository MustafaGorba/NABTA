<?php
class Teacher extends FacultyMember {
    private string $teacherId;
    private int $departmentId;

    /**
     * Constructor to initialize teacher properties
     */
    public function __construct(string $name, int $id, string $emailAddress, int $password, float $salary, string $teacherId, int $departmentId) {
        parent::__construct($name, $id, $emailAddress, $password, $salary);
        $this->teacherId = $teacherId;
        $this->departmentId = $departmentId;
    }

    /**
     * Upload material
     */
    public function uploadMaterial(): void {
        // Material upload logic
    }

    /**
     * Upload grades
     */
    public function uploadGrades(): void {
        // Grade upload logic
    }

    /**
     * Create quiz
     */
    public function createQuiz(): Quiz {
        // Quiz creation logic
        return new Quiz("", "", [], 0);
    }

    /**
     * View student list
     */
    public function viewStudentList(): array {
        // Student list viewing logic
        return []; // Placeholder
    }

    // Getters and setters
    public function getTeacherId(): string {
        return $this->teacherId;
    }

    public function getDepartmentId(): int {
        return $this->departmentId;
    }
}

?>