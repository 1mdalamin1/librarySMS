<template>
  <!-- <div id="nav">
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </div>
  <router-view /> -->
  <div>
    <div v-if="get_check_auth_status" class="auth">
      <!-- v-if="check_auth" -->
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

import { mapGetters, mapMutations } from 'vuex'
// import authLayout from './views/frontend/authLayout.vue'
export default {
  components: { dashboard, AuthLayout },
  data() {
    return {
      // check_auth: true,
      // check_auth: false,
    }
  },
  created: function() {
    this.chech_auth_role();
    this.check_auth_status();
  },
  updated: function() {
    console.log(this.get_check_auth_status);
    console.log(this.get_auth_role_name);
    this.chech_auth_role();
  },
  watch: {
    get_check_auth_status: {
      handler: function(){
        this.check_auth_status();
      }
    }
  },
  methods: {
    // ...mapActions(['']),
    ...mapMutations([
      'set_logout',
      'set_auth_token',
    ]),
    chech_auth_role:function(){
      
      if(this.get_check_auth_status) {
        if(this.get_auth_role_name == 'admin'){
          this.$router.replace({ name: 'admin'});
        }else if(this.get_auth_role_name == 'student'){
          this.$router.replace({ name: 'student'});
        }else if(this.get_auth_role_name == 'management'){
          this.$router.replace({ name: 'management'});
        }else{
          this.set_logout();
          this.$router.replace({ name: 'login'});
        }
      }else{
        // this.$router.replace({ name: 'login'});
        this.$router.replace({ name: 'homePage'});
      }
    // console.log(this.get_check_auth_status);
    },

    check_auth_status: function() {
      console.log('changed status');
        this.chech_auth_role();

        if(this.get_check_auth_status == true){
          window.axios.defaults.headers.common['Authorization'] = `Bearer ${this.get_auth_token}`; 
        }else{
          this.set_auth_token({token: null});
          delete window.axios.defaults.headers.common.Authorization;
      }
    },
  },
  computed: {
    ...mapGetters([
      'get_check_auth_status',
      'get_auth_role_name',
      'get_auth_token',
    ])
  }
};
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
