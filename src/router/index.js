import { createRouter, createWebHistory } from "vue-router";
import dashboard from "../views/backend/dashboard.vue";

import admin from "../views/backend/admin.vue";
import adminLayout from "../views/backend/admin/adminLayout.vue";
import bookEntry from "../views/backend/admin/bookEntry.vue";
import bookList from "../views/backend/admin/bookList.vue";
import entryList from "../views/backend/admin/entryList.vue";
import newEntry from "../views/backend/admin/newEntry.vue";
import adminProfile from "../views/backend/admin/profile.vue";
import users from "../views/backend/admin/users.vue";
// import userList from "../views/backend/admin/userList.vue";

import student from "../views/backend/student.vue";
import studentLayout from "../views/backend/student/studentLayout.vue";
import studentBookList from "../views/backend/student/bookList.vue";
import studentProfile from "../views/backend/student/studentProfile.vue";


import management from "../views/backend/management.vue";
import managementLayout from "../views/backend/management/managementLayout.vue";
import managementBookList from "../views/backend/management/bookList.vue";
import managementEntryList from "../views/backend/management/entryList.vue";
import managementNewEntry from "../views/backend/management/newEntry.vue";
import managementProfile from "../views/backend/management/profile.vue";

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
        path: "",
        name: "admin",
        component: admin,
      },
      {
        path: "users",
        name: "userList",
        component: users,
      },
      {
        path: "profile",
        name: "adminProfile",
        component: adminProfile,
      },
      {
        path: "book-list",
        name: "bookList",
        component: bookList,
      },
      {
        path: "book-entry",
        name: "bookEntry",
        component: bookEntry,
      },
      {
        path: "book-edit/:id",
        name: "bookEdit",
        component: bookEntry,
      },
      {
        path: "entry-list",
        name: "entryList",
        component: entryList,
      },
      {
        path: "new-entry",
        name: "newEntry",
        component: newEntry,
      },
    ],
  },

  
  {
    path: "/student",
    component: studentLayout,
    children: [
      {
        path: "",
        name: "student",
        component: student,
      },
      {
        path: "profile",
        name: "studentProfile",
        component: studentProfile,
      },
      {
        path: "book-list",
        name: "studentBookList",
        component: studentBookList,
      },
    ]
  },
  {
    path: "/management",
    component: managementLayout,
    children: [
      {
        path: "",
        name: "management",
        component: management,
      },
      {
        path: "book-list",
        name: "managementBookList",
        component: managementBookList,
      },
      {
        path: "new-entry",
        name: "managementNewEntry",
        component: managementNewEntry,
      },
      {
        path: "entry-list",
        name: "managementEntryList",
        component: managementEntryList,
      },
      {
        path: "profile",
        name: "managementProfile",
        component: managementProfile,
      },
    ]
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
