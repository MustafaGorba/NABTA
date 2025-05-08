<?php
class Quiz {
    private string $quizId;
    private string $title;
    private array $questions; // Array of Question objects
    private int $totalMarks;

    /**
     * Constructor to initialize quiz properties
     */
    public function __construct(string $quizId, string $title, array $questions, int $totalMarks) {
        $this->quizId = $quizId;
        $this->title = $title;
        $this->questions = $questions;
        $this->totalMarks = $totalMarks;
    }

    /**
     * Create quiz
     */
    public function createQuiz(string $title, string $quizType, int $totalMarks): void {
        // Quiz creation logic
        $this->title = $title;
        $this->totalMarks = $totalMarks;
    }

    /**
     * Add question to quiz
     */
    public function addQuestion(Question $question): void {
        // Question addition logic
        $this->questions[] = $question;
    }

    // Getters and setters
    public function getQuizId(): string {
        return $this->quizId;
    }

    public function getTitle(): string {
        return $this->title;
    }

    public function setTitle(string $title): void {
        $this->title = $title;
    }

    public function getQuestions(): array {
        return $this->questions;
    }

    public function getTotalMarks(): int {
        return $this->totalMarks;
    }

    public function setTotalMarks(int $totalMarks): void {
        $this->totalMarks = $totalMarks;
    }
}

?>