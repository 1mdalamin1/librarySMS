import { createStore } from "vuex";
import auth_store from "./modules/auth_store";
import createPersistedState from "vuex-persistedstate"; // plugins  => https://www.npmjs.com/package/vuex-persistedstate?ref=techvblogs.com

export default createStore({
  state: {},
  mutations: {},
  actions: {},
  modules: {
    auth_store
  },
  plugins: [createPersistedState()],
});
