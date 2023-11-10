<div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>

                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>

                            <a class="nav-link" href="order-create.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-bell"></i></div>
                                Create Order
                            </a>

                            <a class="nav-link" href="orders.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-list"></i></div>
                                Orders
                            </a>

                            <div class="sb-sidenav-menu-heading">Interface</div>

                            <a class="nav-link collapsed" href="#" 
                            data-bs-toggle="collapse" 
                            data-bs-target="#collapseCategory" aria-expanded="false" aria-controls="collapseCategory">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Categories
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseCategory" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="categories-create.php">Create Category</a>
                                    <a class="nav-link" href="categories.php">View Categories</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" 
                            data-bs-toggle="collapse" 
                            data-bs-target="#collapseProduct" aria-expanded="false" aria-controls="collapseProduct">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Products
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseProduct" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="products-create.php">Create Product</a>
                                    <a class="nav-link" href="products.php">View Products</a>
                                </nav>
                            </div>


                            <div class="sb-sidenav-menu-heading">Manage Users</div>
                            
                            <a class="nav-link collapsed" href="#" 
                                data-bs-toggle="collapse" 
                                data-bs-target="#collapseCustomer" 
                                aria-expanded="false" aria-controls="collapseCustomer">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Customer
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseCustomer" aria-labelledby="headingOne" 
                                data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="customers-create.php">Add Customer</a>
                                    <a class="nav-link" href="customers.php">View Customers</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" 
                                data-bs-toggle="collapse" 
                                data-bs-target="#collapseAdmins" 
                                aria-expanded="false" aria-controls="collapseAdmins">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Admins/Staff
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseAdmins" aria-labelledby="headingOne" 
                                data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="admins-create.php">Add New Admin</a>
                                    <a class="nav-link" href="admins.php">View Existing Admins</a>
                                </nav>
                            </div>

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>