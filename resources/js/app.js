require("./bootstrap");

window.Vue = require("vue");
window.Vuex = require("vuex");

import App from "./App.vue";
import router from "./routes/router";
import Vuetify from "./plugins/vuetify";

Vue.use(Vuex);

window.addEventListener("load", function () {
    new Vue({
        vuetify: Vuetify,

        el: "#app",
        router,
        render: (h) => h(App),
    });
});
