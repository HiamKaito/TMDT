<?php
	include 'scripts.php';
?>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	*{box-sizing: border-box;}
	.title{
		float:left;
	}
	.search-container{
		float:right;
		margin-top:10px;
	}
</style>
		<div class="title"><h2> Email đăng ký nhận thông tin</div>	
		
		 
<div class="table-responsive" id="tableHD">		  
<?php

	$connection = mysqli_connect("localhost","root","","webdb");
	$query = "SELECT * FROM tbldangkytaikhoan";

	if (isset($_GET['search'])) {
		$search=$_GET['search'];
		$query="SELECT * FROM tbldangkytaikhoan WHERE email LIKE '%$search%'";
	}

	$query_run = mysqli_query($connection,$query);
	
?>
<table class="table table-bordered" id="datatable" width="100%" cellspacing="0">
	<head>
		<tr>
			<th>Email</th>
		</tr>
	</head>
	<body>
	<?php
		if(mysqli_num_rows($query_run)>0)
		{
			while($row = mysqli_fetch_assoc($query_run))
			{
				?>
		<tr>
			<td><?php echo $row['email']; ?> </td>
			
		</tr>
	</body>
	<?php
		}
		}
		else{
			echo "<h2>Không tìm thấy hóa đơn</h2>";
		}
		?>
</table>
																			

</div> 