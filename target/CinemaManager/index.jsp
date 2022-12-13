<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<<<<<< HEAD
<html>
<body>
<h2>Hello World!</h2>
<a href="movies-list">显示电影列表</a>
=======
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>电影后台管理系统</title>
    <link rel="stylesheet" href="./style.css">
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
</head>

<body>
<div id='app' class="container">
    <img src="./bg.jpg" />
    <div class="panel">
        <div class="content login">
            <div class="switch">
                <span :class='{"active": active === "login"}' @click='go("login")'>登陆</span>
                <span>/</span>
                <span :class='{"active": active === "register"}' @click='go("register")'>注册</span>
            </div>
            <div class='form' id="fromLogin">
                <template v-if='active === "register"'>
                    <div class="input"><input :class='{ hasValue: registerForm.email }' v-model='registerForm.email' type="text" name="email" id='email' /><label for="email">邮箱</label></div>
                    <div class="input"><input :class='{ hasValue: registerForm.Username }' v-model='registerForm.Username' type="text" name="Username" id="username" /><label for="username">用户名</label></div>
                    <div class="input"><input :class='{ hasValue: registerForm.Password }' v-model='registerForm.Password' type="password" name="Password" id="Password" /><label for="Password">密码</label></div>
                    <div class="input"><input :class='{ hasValue: registerForm.repeat }' v-model='registerForm.repeat' type="password" name="repeat" id="Passwordrepeat" /><label for="Passwordrepeat">重复密码</label></div>
                </template>

                <template v-if='active === "login"'>
                    <div class="input"><input :class='{ hasValue: loginForm.Username }' v-model='loginForm.Username' type="text" name="Username" id="username" /><label for="username">用户名</label></div>
                    <div class="input"><input :class='{ hasValue: loginForm.Password }' v-model='loginForm.Password' type="password" name="Password" id="Password" /><label for="Password">密码</label></div>
                </template>

                <span>忘记?</span>

                <button type="submit" @click='submit'>登陆</button>
            </div>
        </div>
    </div>
</div>
>>>>>>> 3c3c66e8cca64c9f270497ab8f08bf0005a1e6ea
</body>

<script>
    var vue = new Vue({
        el: '#app',
        data: {
            active: 'login',
            registerForm: { email: '', Username: '', Password: '', repeat: '', },
            loginForm: { Username: '', Password: '', },
        },
        methods: {
            go (type) {
                this.active = type
            },
            submit() {
                if (type === 'login') {
                    console.log('login', this.loginForm)
                }

                if (type === 'register') {
                    console.log('register', this.registerForm)
                }
            }
        },
        beforeMount () {}
    })
</script>

</html>