<html>
   <head>
      <title>Menampilkan Data Tabel MySQL</title>
      <style>
         body {font-family:tahoma, arial}
         table {border-collapse: collapse}
         th, td {font-size: 13px; border: 1px solid #DEDEDE; padding: 3px 5px; color: #303030}
         th {background: #CCCCCC; font-size: 12px; border-color:#B0B0B0}
      </style>
   </head>
   <body>
      <center><h1></h1></center><Nama Film>
     <center> <h3>Tabel Film</h3></center>
      <center><table></center>
         <thead>
            <tr>
               <th>ID</th>
               <th>NAMA</th>
               <th>ID RAK</th>
               <th>ID KATEGORI</th>
            </tr>
         </thead>
         <?php
            include 'koneksi.php';		
            $sql = 'SELECT  * FROM film';
            $query = mysqli_query($koneksi, $sql);		
            while ($row = mysqli_fetch_array($query))
            {
            	?>
         <tbody>
            <tr>
               <td><?php echo $row['id'] ?></td>
               <td><?php echo $row['nama'] ?></td>
               <td><?php echo $row['id_rak'] ?></td>
               <td><?php echo $row['id_kategori'] ?></td>
            </tr>
         </tbody>
         <?php
            }
            ?>
      </table>
      <center><h3>Tabel KATEGORI </h3></center>
      <center><table></center>
         <thead>
            <tr>
               <th>ID</th>
               <th>NAMA</th>
            </tr>
         </thead>
         <?php
            $sql = 'SELECT  * FROM kategori';
            $query = mysqli_query($koneksi, $sql);		
            while ($row = mysqli_fetch_array($query))
            {
            	?>
         <tbody>
            <tr>
               <td><?php echo $row['id'] ?></td>
               <td><?php echo $row['nama'] ?></td>
            </tr>
         </tbody>


         <?php
            }
            ?>

</table>
      <center><h3>Tabel RAK </h3></center>
      <center><table></center>
         <thead>
            <tr>
               <th>ID</th>
               <th>NAMA</th>
            </tr>
         </thead>
         <?php
            $sql = 'SELECT  * FROM rak';
            $query = mysqli_query($koneksi, $sql);		
            while ($row = mysqli_fetch_array($query))
            {
            	?>
         <tbody>
            <tr>
               <td><?php echo $row['id'] ?></td>
               <td><?php echo $row['nama'] ?></td>
            </tr>
         </tbody>

         
         <?php
            }
            ?>
      </table>
      </table>
    
   </body>
</html>