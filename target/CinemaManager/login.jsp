<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>电影后台管理系统</title>
    <link rel="stylesheet" href="./style.css">
    <script src="https://cdn.staticfile.org/vue/2.6.9/vue.js"></script>
</head>

<body style="display: flex;">
<div id='app' class="container">
    <img src="./bg.jpg"/>
    <div class="panel">
        <div class="content login">
            <div class='form' id="fromLogin">
                <s:form action="login" method="post">
                    <template v-if='active === "login"'>
                        <div class="input" style="width:11.5rem;"><s:textfield
                                v-model='loginForm.Username'
                                type="text" name="id" id="username"></s:textfield><label
                                for="username">用户名</label>
                        </div>
                        <div class="input" style="width:11.5rem;"><s:textfield
                                v-model='loginForm.Password'
                                type="password" name="password"
                                id="password"></s:textfield><label
                                for="Password">密码</label>
                        </div>
                    </template>
                    <s:submit style="border: none; outline: none;
    margin: 2.5rem 0 0;
    width: 100%;
    height: 3rem;
    border-radius: 3rem;
    background: linear-gradient(90deg, rgb(181, 154, 254), rgb(245, 189, 253));
    box-shadow: 0 0 8px rgb(181, 154, 254);
    cursor: pointer;
    color: white;"></s:submit>
                </s:form>
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
            loginForm: {Username: '', Password: '',},
        },
        methods: {
            go(type) {
                this.active = type
            },
            submit() {
                if (type === 'login') {
                    console.log('login', this.loginForm)
                }
            }
        },
        beforeMount() {
        }
    })
</script>

</html>