<?php
require_once("../header.php");
$project = $con->query('select * from projects');
$buyer = $con->query('select * from buyers');
$unit = $con->query('select * from units');
$manager = $con->query("select * from users where designation='Manager'");
$supervisor = $con->query("select * from users where designation='Supervisor'");


if (isset($_POST['submit'])) {
    $project = $_POST['project'];
    $buyer = $_POST['buyer'];
    $unit = $_POST['unit'];
    $manager = $_POST['manager'];
    $supervisor = $_POST['supervisor'];
    $quantity = $_POST['quantity'];
    $rate = $_POST['rate'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];
    $status=$_POST['status'];

    $con->query("insert into orders(project_id,buyer_id,start_date,end_date,quantity,unit_id,project_manager_id,supervisor_id,rate,status) VALUES ('$project','$buyer','$start_date','$end_date','$quantity','$unit','$manager',' $supervisor','$rate','$status')");
?>
    <script>
        window.location.assign('orders_list.php')
    </script>
<?php
}
?>





<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Orders</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Orders</li>
                    </ol>
                </div>
            </div>
            <div>
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><a href="orders_list.php" class="btn btn-primary btn-md">Add Order List</a></h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form action="" method="post" onsubmit="return test()">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Project</label>
                                        <select name="project" id="project" class="form-control">
                                            <option value="">Select Project </option>
                                            <?php while ($c = $project->fetch_assoc()) { ?>
                                                <option value="<?php echo $c['id'] ?>"><?php echo $c['name'] ?> </option>
                                            <?php } ?>
                                        </select>
                                        <span class="text-danger" id="project_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Buyer </label>
                                        <select name="buyer" id="buyer" class="form-control">
                                            <option value="">Select Buyer </option>
                                            <?php while ($c = $buyer->fetch_assoc()) { ?>
                                                <option value="<?php echo $c['id'] ?>"><?php echo $c['company_name'] ?> </option>
                                            <?php } ?>
                                        </select>
                                        <span class="text-danger" id="buyer_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Unit </label>
                                        <select name="unit" id="unit" class="form-control">
                                            <option value="">Select Unit </option>
                                            <?php while ($c = $unit->fetch_assoc()) { ?>
                                                <option value="<?php echo $c['id'] ?>"> <?php echo $c['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <span class="text-danger" id="unit_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Project Manager </label>
                                        <select name="manager" id="manager" class="form-control">
                                            <option value="">Select Manager </option>
                                            <?php while ($c = $manager->fetch_assoc()) { ?>
                                                <option value="<?php echo $c['id'] ?>"> <?php echo $c['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <span class="text-danger" id="manager_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Supervisor </label>
                                        <select name="supervisor" id="supervisor" class="form-control">
                                            <option value="">Select Supervisor </option>
                                            <?php while ($c = $supervisor->fetch_assoc()) { ?>
                                                <option value="<?php echo $c['id'] ?>"> <?php echo $c['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <span class="text-danger" id="supervisor_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="">Quantity</label>
                                        <input type="text" name="quantity" id="quantity" class="form-control"><span class="text-danger" id="quantity_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="">Rate</label>
                                        <input type="text" name="rate" id="rate" class="form-control"><span class="text-danger" id="rate_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="">Start Date</label>
                                        <input type="date" name="start_date" id="start" class="form-control"><span class="text-danger" id="start_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="">End Date</label>
                                        <input type="date" name="end_date" id="end" class="form-control"><span class="text-danger" id="end_error"></span>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Status </label>
                                        <select name="status" id="" class="form-control">
                                            <option value="">Select Status </option>
                                            <option value="running">Running</option>
                                            <option value="finished">Finished</option>
                                        </select>
                                        <!-- <span class="text-danger" id="supervisor_error"></span> -->
                                    </div>
                                </div>
                            </div>

                            
                        </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <input type="submit" value="Submit" name="submit" class="btn btn-primary"></input>
                        </div>
                    </form>
                </div>

            </div>
        </div><!-- /.container-fluid -->
    </section>
</div>
<!-- /.content-wrapper -->

<?php
require_once("../footer.php");
?>