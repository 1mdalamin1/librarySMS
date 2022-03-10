<template>
  <!-- <div id="nav">
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </div>
  <router-view /> -->
  <div>
    <div v-if="check_auth" class="auth">
      Auth part
      <dashboard />
    </div>
    <div v-else class="non-auth">
      <!-- Not auth Part -->
      <auth-layout />
      
      <!-- <router-view /> -->
    </div>

  </div>
</template>
<script>
import dashboard from './views/backend/dashboard.vue'
import AuthLayout from './views/frontend/authLayout.vue'
// import authLayout from './views/frontend/authLayout.vue'
export default {
  components: { dashboard, AuthLayout },
  data() {
    return {
      // check_auth: true,
      check_auth: false,
    }
  },
  created() {
    if(this.check_auth) {
      this.$router.replace({ name: 'admin'})
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
