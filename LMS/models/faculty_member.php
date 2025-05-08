<?php
class FacultyMember extends User {
    private float $salary;

    /**
     * Constructor to initialize faculty member properties
     */
    public function __construct(string $name, int $id, string $emailAddress, int $password, float $salary) {
        parent::__construct($name, $id, $emailAddress, $password);
        $this->salary = $salary;
    }

    /**
     * View salary
     */
    public function viewSalary(): float {
        return $this->salary;
    }

    // Getters and setters
    public function getSalary(): float {
        return $this->salary;
    }

    public function setSalary(float $salary): void {
        $this->salary = $salary;
    }
}
?>