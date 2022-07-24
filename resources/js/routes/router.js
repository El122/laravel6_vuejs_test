import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../components/Home";
import Application from "../components/Application";
import NewApplication from "../components/NewApplication";

Vue.use(VueRouter);

export default new VueRouter({
    mode: "history",
    routes: [
        {
            path: "/",
            name: "home",
            component: Home,
        },
        {
            path: "/application",
            name: "newapplication",
            component: NewApplication,
        },
        {
            path: "/application/:id",
            name: "application",
            component: Application,
        },
    ],
});
