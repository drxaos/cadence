<html>
<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.login.title"/></title>
    <style type='text/css' media='screen'>
        .login-form {
            margin: 20px;
        }
    </style>
</head>

<body>
<h1>Авторизация</h1>

<g:if test='${flash.message}'>
    <div class='errors'>${flash.message}</div>
</g:if>

<form action='${postUrl}' method='POST' id='loginForm' class='login-form' autocomplete='off'>
    <p>
        <label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
        <input type='text' class='text_' name='j_username' id='username'/>
    </p>

    <p>
        <label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
        <input type='password' class='text_' name='j_password' id='password'/>
    </p>

    <p id="remember_me_holder">
        <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
               <g:if test='${hasCookie}'>checked='checked'</g:if>/>
        <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
    </p>

    <p>
        <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
    </p>
</form>

<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
