import { createStore } from 'vuex'

// Create a new store instance.
export default createStore({
  state () {
    return {
      layout: 'SimpleLayout',
      user: {
        isLoggedIn: false,
        uid: false,
        email: false,
        name:false,
        token:false
      },
    }
  },
  mutations: {
    logOutUser(state) {
      state.user.isLoggedIn = false
      state.user.uid = false
      state.user.email = false
      state.user.token = false
      state.user.name = false
    },
    setLoginStatus (state, payload) {
        state.user.isLoggedIn = payload
    },
    setUserUID (state, payload) {
        state.user.uid = payload
    },
    setEmail (state, payload) {
        state.user.email = payload
    },
    setName (state, payload) {
        state.user.name = payload
    },
    setToken (state, payload) {
        state.user.token = payload
    },
  },
  getters: {
    layout: state => state.layout,
    user : state => state.user,
    isLoggedIn: state => state.user.isLoggedIn,
    uid: state => state.user.uid,
    token: state => state.user.token,
    name: state => state.user.name,
  }
})