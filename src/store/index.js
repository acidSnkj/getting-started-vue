/* eslint-disable no-undef */
import { createStore } from 'vuex'
import { GET_CARS, UPDATE_CAR } from './mutation-types'

console.log("proce", process.env.NODE_ENV)

const mockCars = [
	{
		name: "Mazda 6",
		description: "Beautiful car",
		engine: '',
		transmission: '',
		year: 'YYYY-MM-DD',
		cc: 5000,
		active: false,
		color: 'Black',
		tr: 'FR',
		id: 1
	},
	{
		name: "Ford Fiesta",
		description: "Meh Car",
		engine: '1.6L',
		transmission: 'Boring Automatic',
		year: 'YYYY-MM-DD',
		cc: 1600,
		active: false,
		color: 'Grey',
		tr: 'FF',
		id: 2
	},
	{
		name: "Chevrolet Aveo",
		description: "Not Okay Car",
		engine: '1.2L',
		transmission: 'Boring in every TR',
		year: 'YYYY-MM-DD',
		cc: 1200,
		active: false,
		color: 'Ugly',
		tr: 'FF',
		id: 3
	},
]

const getCarsService = () => {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve(mockCars);
    }, 1500);
  });
}

export default createStore({
  state: {
    cars: []
  },
  getters: { 
    getCarById: state => id => state.cars.find(car => car.id === id)
  },
  // TODO: Add and Delete cars
  mutations: {
    [GET_CARS]: (state, cars) => {
      state.cars = cars
    },
    [UPDATE_CAR]: (state, car) => {
      const index = state.cars.findIndex(c => c.id === car.id);
      state.cars.splice(index, 1, car);
      state.cars = [...state.cars];
    }
  },
  actions: {
    async getCarsAction ({ commit }) {
      const result = await getCarsService();
      commit(GET_CARS, result);
     },
    async updateCarAction ({ commit }, car) {
      commit(UPDATE_CAR, car);
    }
  },
  modules: {
  },
  strict: process.env.NODE_ENV !== 'production'
})
