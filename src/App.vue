<template>
  <!-- <div id="nav">
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </div>
  <router-view /> -->
  <div>
    <div v-if="check_auth" class="auth">
      Auth part
      <div id="nav">
        <router-link :to="{ path: 'admin' }">admin</router-link> |
        <router-link :to="{ path: 'student' }">student</router-link> |
        <router-link :to="{ path: 'management' }">management</router-link>
      </div>
    </div>
    <div v-else class="non-auth">
      Not auth Part
      <div id="nav">
        <router-link :to="{ path: 'login' }">Login</router-link> |
        <router-link :to="{ path: 'signup' }">signup</router-link> |
        <router-link :to="{ path: 'portfolio' }">Portfolio</router-link>
      </div>
    </div>
    <router-view />
  </div>
</template>
<script>
export default {
  data() {
    return {
      check_auth: true,
      // check_auth: false,
    }
  },
  created() {
    if(this.check_auth) {
      this.$router.replace({ name: 'dashboard'})
    }else{
      this.$router.replace({ name: 'login'})
    }
  },
}
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
