<?php

require_once('../notify-php/autoload.php');

$api_instance = new NotifyLk\Api\SmsApi();
$user_id = "27908"; // string | API User ID - Can be found in your settings page.
$api_key = "lWB0SyqB32u5mP6h2Ky0"; // string | API Key - Can be found in your settings page.
$message = "Your payment has been received. Thank you for joining us."; // string | Text of the message. 320 chars max.
$to = "94704389094"; // string | Number to send the SMS. Better to use 9471XXXXXXX format.
$sender_id = "NotifyDEMO"; // string | This is the from name recipient will see as the sender of the SMS. Use \\\"NotifyDemo\\\" if you have not ordered your own sender ID yet.
$contact_fname = ""; // string | Contact First Name - This will be used while saving the phone number in your Notify contacts (optional).
$contact_lname = ""; // string | Contact Last Name - This will be used while saving the phone number in your Notify contacts (optional).
$contact_email = ""; // string | Contact Email Address - This will be used while saving the phone number in your Notify contacts (optional).
$contact_address = ""; // string | Contact Physical Address - This will be used while saving the phone number in your Notify contacts (optional).
$contact_group = 0; // int | A group ID to associate the saving contact with (optional).
$type = null; // string | Message type. Provide as unicode to support unicode (optional).

try {
    $api_instance->sendSMS($user_id, $api_key, $message, $to, $sender_id, $contact_fname, $contact_lname, $contact_email, $contact_address, $contact_group, $type);
    header("Location: http://localhost/bus/");
} catch (Exception $e) {
    echo 'Exception when calling SmsApi->sendSMS: ', $e->getMessage(), PHP_EOL;
}

?>