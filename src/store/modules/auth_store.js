import axios from "axios";

// state
const state = {
    check_auth_status: false,
    auth_info: {
        first_name: null,
        last_name: null,
        email: null,
        username: null,
        image: null,
        phone: null,
        address: null,
        status: null,
        role_name: 'guest',
    },
    auth_role_name: 'guest',
}

// getters
const getters = {
    get_check_auth_status: state => state.check_auth_status, 
    get_auth_info: state => state.auth_info, 
    get_auth_role_name: state => state.auth_role_name, 
}

// action
const actions = {
    fetch_auth_info: function() {
        axios.get('/api/links')
            .then((res) => {
                console.log(res.data);
            });
    }
}

// mutator
const mutations = {
    set_auth_role_name: function(state, role_name) {
        state.auth_role_name = role_name;
    },
    set_check_auth_status: function(state, check_auth_status) {
        state.check_auth_status = check_auth_status;
    },
    set_logout: function(state){
        state.check_auth_status = false;
        state.auth_role_name = 'guest';
    }
}


export default{
    state, 
    getters,
    actions,
    mutations
}