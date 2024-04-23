<?php
require_once("../header.php");
//$con = new mysqli('localhost', 'root', '', 'production_automation');
$serror = '';
$eerror = '';
if (isset($_POST['submit1'])) {
    $sdate = $_POST['s_date'];
    $edate = $_POST['e_date'];

    if (empty($sdate) || empty($edate)) {
        if (empty($sdate)) {
            $serror = "input from date";
        } else {
            $serror = "";
        }
        if (empty($edate)) {
            $eerror = "input to date";
        } else {
            $eerror = "";
        }
        $ship = $con->query("select * from shipping ")->fetch_all(MYSQLI_ASSOC);
    } else {
        $ship = $con->query("select * from shipping where date between '$sdate' and '$edate' ")->fetch_all(MYSQLI_ASSOC);
    }
} else {
    $ship = $con->query("select * from shipping ")->fetch_all(MYSQLI_ASSOC);
}

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Shipping list</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Shipping list</li>
                    </ol>
                </div>
            </div>
            <div>
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-2">
                                <h3 class="card-title">Shipping List</h3>
                            </div>
                            <div class="col-md-7 offset-3 d-flex justify-content-end">
                                <form action="" method="post">
                                    <div class="d-flex">
                                        <div class="d-flex">
                                            <label class="btn btn-info">From</label>
                                            <input type="date" name="s_date" id="s_date" class="form-control">
                                            <span style="color:red" id="s_error">
                                                <?php echo $serror; ?>
                                            </span>
                                        </div>
                                        <div class="d-flex">
                                            <label class="btn btn-info">To</label>
                                            <input type="date" name="e_date" id="e_date" class="form-control">
                                            <span style="color:red" id="e_error">
                                                <?php echo $eerror; ?>
                                            </span>
                                        </div>
                                        <div>
                                            <input class="btn btn-secondary" type="submit" name="submit1"
                                                value="Search">
                                        </div>
                                    </div>
                                </form>
                                <div class="ml-5">
                                    <a href="<?php echo $_SESSION['base_url'] ?>/nazad_shiping/shipping_insert.php"
                                        class="btn btn-warning">Add Shipping</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Shipping_id</th>
                                    <th>Order_id</th>
                                    <th>Quantity</th>
                                    <th>Unit_id</th>
                                    <th>date</th>
                                    <th style="width: 160px">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($ship as $i => $p) {

                                    ?>

                                    <tr>
                                        <td>
                                            <?php echo ++$i ?>
                                        </td>
                                        <td>
                                            <?php echo $p['id'] ?>
                                        </td>
                                        <td>
                                            <?php $buyer = $con->query("select orders.*, buyers.company_name from orders join buyers on orders.buyer_id=buyers.id ")->fetch_assoc();
                                    echo $buyer['company_name'] ?>
                                        </td>
                                        <td>
                                            <?php echo round($p['quantity']) ?>
                                        </td>
                                        <td>
                                            <?php $user = $con->query("select * from units where id=" . $p['unit_id'])->fetch_assoc();
                                    echo $user['name'] ?>
                                        </td>
                                        <td>
                                            <?php echo $p['date'] ?>
                                        </td>
                                        <td>
                                            <a href="shipping_edit.php?id=<?php echo $p['id'] ?>"
                                                class="btn btn-success btn-sm">Update</a>

                                            <a href="shipping_delete.php?id=<?php echo $p['id'] ?>"
                                                class="btn btn-sm btn-danger"
                                                onclick="return confirm('are you sure to delete')">Delete</a>
                                        </td>
                                    </tr>
                                <?php } ?>

                            </tbody>

                        </table>
                    </div>
                    <!-- /.card-body -->

                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

</div>
<!-- /.content-wrapper -->

<?php
require_once("../footer.php");
?>