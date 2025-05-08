<?php
class Assignment {
    private string $assignmentId;
    private string $title;
    private DateTime $deadline;

    /**
     * Constructor to initialize assignment properties
     */
    public function __construct(string $assignmentId, string $title, DateTime $deadline) {
        $this->assignmentId = $assignmentId;
        $this->title = $title;
        $this->deadline = $deadline;
    }

    /**
     * Submit assignment
     */
    public function submit(string $submission): void {
        // Submission logic
    }

    /**
     * Mark assignment
     */
    public function mark(float $score): void {
        // Marking logic
    }

    /**
     * Attach material to assignment
     */
    public function attachMaterial(string $materialFile): void {
        // Material attachment logic
    }

    // Getters and setters
    public function getAssignmentId(): string {
        return $this->assignmentId;
    }

    public function getTitle(): string {
        return $this->title;
    }

    public function setTitle(string $title): void {
        $this->title = $title;
    }

    public function getDeadline(): DateTime {
        return $this->deadline;
    }

    public function setDeadline(DateTime $deadline): void {
        $this->deadline = $deadline;
    }
}

?>