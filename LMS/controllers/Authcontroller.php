<?php
require_once '../../Models/user.php';
require_once '../../controllers/DBcontroller.php'
class Authcontroller
{
    protected $db;

    public function login(user $user)
    {
        $db = new DBcontroller
        if($db->openConnection())
        {
            $query = "select * from user where "
        }
        else
        {
            echo "Error in Database Connection"
            return false;
        }
    }
}
?>