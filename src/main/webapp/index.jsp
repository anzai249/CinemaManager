<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <div class='form' id="fromLogin">

                <template v-if='active === "login"'>
                    <div class="input"><input :class='{ hasValue: loginForm.Username }' v-model='loginForm.Username' type="text" name="Username" id="username" /><label for="username">用户名</label></div>
                    <div class="input"><input :class='{ hasValue: loginForm.Password }' v-model='loginForm.Password' type="password" name="Password" id="Password" /><label for="Password">密码</label></div>
                </template>

                <button type="submit" @click='submit'>登录</button>
            </div>
        </div>
    </div>
</div>
</body>

<script>
    var vue = new Vue({
        el: '#app',
        data: {
            active: 'login',
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
            }
        },
        beforeMount () {}
    })
</script>

</html>