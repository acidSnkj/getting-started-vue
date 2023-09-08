<template>
  <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    <div class="container-fluid">
      <div class="navbar-brand-box">
        <a class="navbar-brand" href="#"></a>
      </div>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <router-link class="nav-link active" aria-current="page" href="#" to="/">Inicio</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/about">Acerca de</router-link>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Links
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" v-bind:href=github target="_blank">GitHub</a></li>
              <li><a class="dropdown-item" v-bind:href=youtube target="_blank">Youtube</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" v-bind:href="testing4" target="_blank">Testing</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" aria-disabled="true">Disabled</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
</template>
<script>
export default {
  name: 'HeaderBar',
  data() {
    return {
      github: "https://github.com/acidSnkj/getting-started-vue",
      youtube: "https://www.youtube.com/watch?v=4deVCNJq3qc",
      testing4: "https://www.google.com."
    }
  },
}
</script>

<style>
.navbar-brand-box {
  width: 50px;
  height: 50px;
  background-image: url(../assets/github_logo.png);
  background-size: 60px;
  background-repeat: no-repeat;
  background-position: center;
}
</style>