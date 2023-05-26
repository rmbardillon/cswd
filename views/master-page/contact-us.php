<?php include_once('../layout/header.php'); $page = "contact-us"; ?>
<body>
    <?php include_once('../layout/navbar.php'); ?>
    <div class="container">
        <section class="py-4 py-xl-5">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <iframe allowfullscreen="" frameborder="0" loading="lazy" src="https://www.google.com/maps/embed/v1/search?key=AIzaSyDHvzMMLX94BYCgHBr-l1DiQW57GTvcpaI&amp;q=8477%2BRH+Santa+Rosa%2C+Laguna&amp;zoom=17" width="100%" height="100%"></iframe>
                    </div>
                    <div class="col col-4">
                        <form class="p-3 p-xl-4" method="post">
                            <h4>Contact us</h4>
                            <div class="mb-3">
                                <label class="form-label" for="name">Name</label>
                                <input class="form-control" type="text" id="name" name="name">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="email">Email</label>
                                <input class="form-control" type="email" id="email" name="email">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="message">Message</label>
                                <textarea class="form-control" id="message" name="message" rows="6"></textarea>
                            </div>
                            <div class="mb-3"><button class="btn btn-primary w-100" type="button" id="sendEmail">Send</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
</body>

</html>