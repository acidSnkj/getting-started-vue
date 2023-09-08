/* eslint-disable no-undef */
import { createRouter, createWebHistory } from 'vue-router'
import CarVersion2 from '@/components/CarVersion2/CarVersion2';
import CarDetail from '@/components/CarVersion2/CarDetail.vue';

const routes = [
  {
    path: '/',
    redirect: '/cars'
  },
  {
    path: '/cars',
    name: 'car-list',
    component: CarVersion2
  },
  {
    path: '/cars/:id',
    name: 'car-details',
    component: CarDetail,
    props: r => ({ id: parseInt(r.params.id) })
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
