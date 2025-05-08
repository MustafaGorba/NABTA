<?php
class Grades {
    private string $studentId;
    private string $courseId;
    private float $gradeValue;
    private string $letterGrade;
    private bool $isPassed;

    /**
     * Constructor to initialize grades properties
     */
    public function __construct(string $studentId, string $courseId, float $gradeValue, string $letterGrade, bool $isPassed) {
        $this->studentId = $studentId;
        $this->courseId = $courseId;
        $this->gradeValue = $gradeValue;
        $this->letterGrade = $letterGrade;
        $this->isPassed = $isPassed;
    }

    // Getters and setters
    public function getStudentId(): string {
        return $this->studentId;
    }

    public function getCourseId(): string {
        return $this->courseId;
    }

    public function getGradeValue(): float {
        return $this->gradeValue;
    }

    public function setGradeValue(float $gradeValue): void {
        $this->gradeValue = $gradeValue;
    }

    public function getLetterGrade(): string {
        return $this->letterGrade;
    }

    public function setLetterGrade(string $letterGrade): void {
        $this->letterGrade = $letterGrade;
    }

    public function getIsPassed(): bool {
        return $this->isPassed;
    }

    public function setIsPassed(bool $isPassed): void {
        $this->isPassed = $isPassed;
    }
}
?>