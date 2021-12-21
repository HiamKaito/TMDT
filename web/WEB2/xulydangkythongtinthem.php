<?php

    if (isset( $_GET['button']) && isset( $_GET['email']) ) {

		$email = $_GET['email'];
		
		$conn = mysqli_connect('localhost','root','','webdb');
		$sql = "insert into tbldangkytaikhoan
		VALUES ('$email')";

		if ($conn->query($sql) === TRUE) {
			header('location: index.php?hoanthanh');
		} else {
			header('location: index.php?thatbai');
		}

		$conn->close();

    }
?>