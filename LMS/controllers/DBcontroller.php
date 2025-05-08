<?php

class DBcontroller
{
    public  $dbHost = "localhost"; 
    public  $dbUser = "root";
    public  $dbPassword = "";
    public  $dbName = "lms";

    public function openconnection()
    {
        $this->connection = new mysqli($this->$dbHost,$this->$dbUser,$this->$dbPassword,$this->$dbName);
        if($this->connection->connect_error)
        {
            echo "Error in connection: ". $this->connection->connect_error;
            return false;
        }
        else
        {
            return true;
        }
    }
    public function closeconnection()
    {
        if($this->connection)
        {
            $this->connection->close();
        }
        else
        {
            echo "connection is not opened"; 
        }
    }
}
?>