<?php
class Question {
    private string $text;
    private array $options;
    private string $correctAnswer;
    private int $marks;

    /**
     * Constructor to initialize question properties
     */
    public function __construct(string $text, array $options, string $correctAnswer, int $marks) {
        $this->text = $text;
        $this->options = $options;
        $this->correctAnswer = $correctAnswer;
        $this->marks = $marks;
    }

    // Getters and setters
    public function getText(): string {
        return $this->text;
    }

    public function setText(string $text): void {
        $this->text = $text;
    }

    public function getOptions(): array {
        return $this->options;
    }

    public function setOptions(array $options): void {
        $this->options = $options;
    }

    public function getCorrectAnswer(): string {
        return $this->correctAnswer;
    }

    public function setCorrectAnswer(string $correctAnswer): void {
        $this->correctAnswer = $correctAnswer;
    }

    public function getMarks(): int {
        return $this->marks;
    }

    public function setMarks(int $marks): void {
        $this->marks = $marks;
    }
}
?>