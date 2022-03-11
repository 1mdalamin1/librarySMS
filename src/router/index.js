import { createRouter, createWebHistory } from "vue-router";
import dashboard from "../views/backend/dashboard.vue";

import admin from "../views/backend/admin.vue";
import adminLayout from "../views/backend/admin/adminLayout.vue";
import bookEntry from "../views/backend/admin/bookEntry.vue";
import bookList from "../views/backend/admin/bookList.vue";
import users from "../views/backend/admin/users.vue";

import student from "../views/backend/student.vue";
import management from "../views/backend/management.vue";

import authLayout from "../views/frontend/authLayout";
import login from "../views/frontend/login.vue";
import signup from "../views/frontend/signup.vue";
import forget from "../views/frontend/forget";

import portfolio from "../views/frontend/portfolio.vue";

const routes = [
  {
    path: "/dashboard",
    name: "dashboard",
    component: dashboard,
  },
  {
    path: "/admin",
    component: adminLayout,
    children: [
      {
        path: "/",
        name: "admin",
        component: admin,
      },
      {
        path: "/users",
        name: "userList",
        component: users,
      },
      {
        path: "/book-list",
        name: "bookList",
        component: bookList,
      },
      {
        path: "/book-entry",
        name: "bookEntry",
        component: bookEntry,
      },
    ],
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
    path: "/auth",
    component: authLayout,
    children: [
      {
        path: "login",
        name: "login",
        component: login,
      },
      {
        path: "signup",
        name: "signup",
        component: signup,
      },
      {
        path: "forget",
        name: "forget",
        component: forget,
      },
    ],
  },
  // {
  //   path: "/login",
  //   name: "login",
  //   component: login,
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   // component: () =>
  //   //   import(/* webpackChunkName: "about" */ "../views/About.vue"),
  // },
  // {
  //   path: "/signup",
  //   name: "signup",
  //   component: signup,
  // },
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
