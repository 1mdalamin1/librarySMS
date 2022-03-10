import { createRouter, createWebHistory } from "vue-router";
import dashboard from "../views/backend/dashboard.vue";
import admin from "../views/backend/admin.vue";
import student from "../views/backend/student.vue";
import management from "../views/backend/management.vue";

import login from "../views/frontend/login.vue";
import signup from "../views/frontend/signup.vue";
import portfolio from "../views/frontend/portfolio.vue";

const routes = [
  {
    path: "/",
    name: "dashboard",
    component: dashboard,
  },
  {
    path: "/admin",
    name: "admin",
    component: admin,
  },
  {
    path: "/student",
    name: "student",
    component: student,
  },
  {
    path: "/management",
    name: "management",
    component: management,
  },
  {
    path: "/login",
    name: "login",
    component: login,
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    // component: () =>
    //   import(/* webpackChunkName: "about" */ "../views/About.vue"),
  },
  {
    path: "/signup",
    name: "signup",
    component: signup,
  },
  {
    path: "/portfolio",
    name: "portfolio",
    component: portfolio,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
