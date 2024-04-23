<?php
require_once("../header.php");
// $order=$con->query("select * from orders")->fetch_all(MYSQLI_ASSOC);
$order = $con->query("select orders.*,projects.name FROM orders JOIN projects ON orders.project_id=projects.id ")->fetch_all(MYSQLI_ASSOC);

// $con = new mysqli('localhost', 'root', '', 'production_automation');
?>

<script>
    // const fn=()=>{
    //     let order_id = document.getElementById('order_id').value.trim();
    //     let bundle_code = document.getElementById('bundle_code').value.trim();

    //     if(order_id =='' || bundle_code ==''){
    //         if (order_id == '') {
    //             document.getElementById('order_id').style.border = '1px solid red'
    //             document.getElementById('error').innerHTML = 'Required Order Id'
    //         } else {
    //             document.getElementById('order_id').style.border = '1px solid green'
    //             document.getElementById('error').innerHTML = ''

    //         }
    //         if (bundle_code == '') {
    //             document.getElementById('bundle_code').style.border = '1px solid red'
    //             document.getElementById('error2').innerHTML = 'Required Bundle Code'
    //         } else {
    //             document.getElementById('bundle_code').style.border = '1px solid green'
    //             document.getElementById('error2').innerHTML = ''

    //         }
    //         return false;
    //     }else{
    //         return true;
    //         document.getElementById('order_id').style.border = '1px solid green'
    //         document.getElementById('error').innerHTML = ''
    //         document.getElementById('bundle_code').style.border = '1px solid green'
    //         document.getElementById('error2').innerHTML = ''


    //     }
    // }

    $(document).ready(function () {
        $('#frm_valid').validate({
            rules: {
                order_id: "required",
                bundle_code: "required"

            },
            messages: {
                order_id: "Please select a Order",
                
            }
        })
    })


</script>

<?php
if (isset($_POST['submit'])) {
    $order_id = $_POST['order_id'];
    $bundle_code = $_POST['bundle_code'];


    $con->query("INSERT INTO `bundles`(`order_id`, `bundle_code`) VALUES ('$order_id','$bundle_code')");

    ?>
    <script>
        window.location.assign('bundle_list.php')
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
                    <h1>Add Bundles</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Bundles</li>
                    </ol>
                </div>
            </div>
            <div>
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><a href="bundle_list.php" class="btn btn-primary btn-md">Bundles List</a>
                        </h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form action="" method="post" onsubmit="return fn()" enctype="multipart/form-data" id="frm_valid">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Project name</label>
                                        <select name="order_id" id="order_id" class="form-control">
                                            <option value="">Select project name</option>
                                            <?php foreach ($order as $d) { ?>
                                                <option value="<?php echo $d['id'] ?>">
                                                    <?php echo $d['name'] ?>
                                                </option>
                                            <?php } ?>
                                        </select><span id="error"></span>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Bundle Code</label>
                                        <input type="text" name="bundle_code" class="form-control" id="bundle_code"
                                            placeholder="Enter Bundle Code"><span id="error2"></span>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
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