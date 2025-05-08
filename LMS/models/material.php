<?php
class Material {
    private string $teacherId;
    private string $title;
    private string $contentType;

    /**
     * Constructor to initialize material properties
     */
    public function __construct(string $teacherId, string $title, string $contentType) {
        $this->teacherId = $teacherId;
        $this->title = $title;
        $this->contentType = $contentType;
    }

    /**
     * Upload material
     */
    public function upload(): void {
        // Upload logic
    }

    /**
     * Download material
     */
    public function download(): string {
        // Download logic
        return "file_path"; // Placeholder
    }

    /**
     * Preview material
     */
    public function preview(): void {
        // Preview logic
    }

    // Getters and setters
    public function getTeacherId(): string {
        return $this->teacherId;
    }

    public function getTitle(): string {
        return $this->title;
    }

    public function setTitle(string $title): void {
        $this->title = $title;
    }

    public function getContentType(): string {
        return $this->contentType;
    }

    public function setContentType(string $contentType): void {
        $this->contentType = $contentType;
    }
}

?>