<?php include('includes/header.php'); ?>

<div class="container-fluid px-4">
    <div class="card mt-4 shadow-sm">
        <div class="card-header">
        <!-- <?php echo '<h4> Connection <h4>'?> -->

            <h4 class="mb-0">Products
                <a href="products-create.php" class="btn btn-primary float-end">Add Product</a>
            </h4>
        </div>
        <div class="card-body">

            <?php 
                $products = getAll('products');
                if(!$products){
                    echo '<h4>Something Went Wrong!</h4>';
                    return false;
                }
                if(mysqli_num_rows($products) > 0)
                {
            ?>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <?php foreach($products as $item) : ?>
                        <tr>
                            <td><?= $item['id'] ?></td>
                            <td><img src="../<?= $item['image']; ?>" style="width:50px;height:50px;" alt=""></td>
                            <td><?= $item['name'] ?></td>

                            <td>
                                <?php
                                    if($item ['status'] == 1){
                                        echo '<span class="badge bg-danger">Hidden</span>';
                                    }else{
                                        echo '<span class="badge bg-primary">Visible</span>';
                                    }
                                ?>
                            </td>
                            <td>
                                <a href="products-edit.php?id=<?= $item['id']; ?>" class="btn btn-success btn-sm">Edit</a>
                                <a 
                                    href="products-delete.php?id=<?= $item['id']; ?>" 
                                    class="btn btn-danger btn-sm"
                                    onClick="return confirm('Are you Sure You Want To Delete This Image')"
                                >
                                    Delete
                                </a>
                            </td>

                        </tr>
                        <?php endforeach; ?>

                        
                    </tbody>
                </table>
            </div>
            <?php
                }
                else{
            ?>
            <tr>
                <h4 class="mb-0">No Record Found</h4>
            </tr>
            <?php
            }
            ?>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>