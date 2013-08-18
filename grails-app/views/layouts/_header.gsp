<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <g:link uri="/" class="brand">
                <img src="${resource(dir: 'images', file: 'logo.png')}" alt="bedspacer.ph" style="height: 40px"/>
            </g:link>

            <div class="nav-collapse">
                <ul class="nav nav-pills">
                    <sec:ifAnyGranted roles="ROLE_CARETAKER"><li><g:link controller="property" action="list"><i class="icon-wrench"></i> Dashboard</g:link></li></sec:ifAnyGranted>
                </ul>
                <div class="pull-right" style="line-height: 38px;">
                    <sec:ifLoggedIn>
                        <i class='icon-user'></i>
                        Welcome, <g:link controller="user" action="show" id="${sec.loggedInUserInfo(field: 'id')}">
                        <sec:username/>
                    </g:link>
                        | <i class='icon-off'></i> <g:link controller="logout">Log out</g:link>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <i class='icon-user'></i> <g:link controller="login">Log in</g:link>&nbsp;&nbsp;&nbsp;
                        <i class='icon-plus'></i> <g:link controller="user" action="create">Register</g:link>
                    </sec:ifNotLoggedIn>
                </div>
            </div>
        </div>
    </div>
</div>
