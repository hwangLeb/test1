<style>
    #uni_modal .modal-content>.modal-footer,#uni_modal .modal-content>.modal-header{
        display:none;
    }
</style>
<div class="container-fluid">
    <form action="" id="registration">
        <div class="row">
        
        <h3 class="text-center">Create New Account
            <span class="float-right">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </span>
        </h3>
            <hr>
        </div>
        <div class="row align-items-center h-100">
            
            <div class="col-lg-5 border-right">
                
                <div class="form-group">
                    <label for="" class="control-label">Firstname</label>
                    <input type="text" class="form-control form-control-sm form" name="firstname" required>
                </div>
                <div class="form-group">
                    <label for="" class="control-label">Lastname</label>
                    <input type="text" class="form-control form-control-sm form" name="lastname" required>
                </div>
                <div class="form-group">
                    <label for="" class="control-label">Contact</label>
                    <input type="text" class="form-control form-control-sm form" name="contact" required>
                </div>
                <div class="form-group">
                    <label for="" class="control-label">Gender</label>
                    <select name="gender" id="" class="custom-select select" required>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="form-group">
                    <label for="" class="control-label">Default Delivery Address</label>
                    <textarea class="form-control form" rows='3' name="default_delivery_address"></textarea>
                </div>
                <div class="form-group">
                    <label for="" class="control-label">Email</label>
                    <input type="text" class="form-control form-control-sm form" name="email" required>
                </div>
                <div class="form-group">
                    <label for="" class="control-label">Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control form-control-sm form" name="password" id="password" required>
                        <div class="input-group-append">
                            <button class="btn btn-outline-success fa fa-eye" type="button" id="togglePassword"></button>
                        </div>
                    </div>
                    <small class="form-text text-muted">Password must be at least 8 characters long, contain at least one uppercase letter, one number, and one special character.</small>
                </div>
                <div class="form-group d-flex justify-content-between">
                    <a href="javascript:void()" id="login-show">Already have an Account</a>
                    <button class="button">Register</button>
                </div>
            </div>
        </div>
    </form>
</div>

<script>
    $(function(){
        $('#login-show').click(function(){
            uni_modal("","login.php")
        });

        $('#togglePassword').click(function() {
            const password = document.getElementById('password');
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            this.textContent = type === 'password' ? '' : '';
        });

        $('#registration').submit(function(e){
            e.preventDefault();
            start_loader();

            if ($('.err-msg').length > 0)
                $('.err-msg').remove();

            const password = $('[name="password"]').val();
            const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

            if (!passwordRegex.test(password)) {
                var _err_el = $('<div>');
                _err_el.addClass("alert alert-danger err-msg").text('Password does not meet the requirements.');
                $('[name="password"]').after(_err_el);
                end_loader();
                return;
            }

            $.ajax({
                url: _base_url_ + "classes/Master.php?f=register",
                method: "POST",
                data: $(this).serialize(),
                dataType: "json",
                error: err => {
                    console.log(err);
                    alert_toast("An error occurred", 'error');
                    end_loader();
                },
                success: function(resp){
                    if (typeof resp == 'object' && resp.status == 'success') {
                        alert_toast("Account successfully registered", 'success');
                        setTimeout(function(){
                            location.reload();
                        }, 2000);
                        $('#registration').trigger('reset');
                    } else if (resp.status == 'failed' && !!resp.msg) {
                        var _err_el = $('<div>');
                        _err_el.addClass("alert alert-danger err-msg").text(resp.msg);
                        $('[name="password"]').after(_err_el);
                        end_loader();
                    } else {
                        console.log(resp);
                        alert_toast("An error occurred", 'error');
                        end_loader();
                    }
                }
            });
        });
    });
</script>
