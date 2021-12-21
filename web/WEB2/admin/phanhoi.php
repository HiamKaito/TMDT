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
		<div class="title"><h2> Các phản hổi ý kiến</div>	
		
		 
<div class="table-responsive" id="tableHD">		  
<?php

	$connection = mysqli_connect("localhost","root","","webdb");
	$query = "SELECT * FROM tblphanhoi";

	$query_run = mysqli_query($connection,$query);
	
?>
<table class="table table-bordered" id="datatable" width="100%" cellspacing="0">
	<head>
		<tr>
			<th>Họ và tên</th>
			<th>Email</th>
			<th>Thông tin phản hồi</th>
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
			<td><?php echo $row['hoten']; ?> </td>
			<td><?php echo $row['email']; ?> </td>
			<td><?php echo $row['phanhoi']; ?> </td>
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