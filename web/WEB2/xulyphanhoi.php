<?php

    if (isset( $_GET['button']) && isset( $_GET['email']) ) {

		$name = $_GET['name'];
		$email = $_GET['email'];
		$message = $_GET['message'];
		
		
		$conn = mysqli_connect('localhost','root','','webdb');
		$sql = "insert into tblphanhoi
		VALUES ( '$name','$email','$message')";

		if ($conn->query($sql) === TRUE) {
			header('location: contact.php?hoanthanh');
		} else {
			header('location: contact.php?thatbai');
		}

		$conn->close();

    }
?>