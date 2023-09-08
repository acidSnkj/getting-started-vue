<template>
	<HeaderBar />
	<div style="display: flex; justify-content: flex-start; flex-direction: row">
		<CarList :cars="cars" :message="message" @car-selected="selectCar" />
		<CarDetail v-if="selectedCar" :car="selectedCar" @cancel="cancel" @save="save" />
	</div>
</template>

<script>
import CarList from '@/components/Car/List/CarList'
import CarDetail from '@/components/CarVersion2/CarDetail'
import HeaderBar from '@/components/header-bar'
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
		id: "1"
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
		id: "2"
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
		id: "3"
	},
]
export default {
	name: 'CarVersion2',
	data() {
		return {
			selectedCar: undefined,
			cars: [],
			message: undefined,
			ccMessage: ''
		}
	},
	components: {
		CarList,
		CarDetail,
		HeaderBar
	},
	computed: {
		fullDescription() {
			if (!this.selectedCar) return '';
			const { name, color } = this.selectedCar;
			return `${name} is ${color}`;
		}
	},
	created() {
		this.loadCars();
	},
	methods: {
		selectCar(car) {
			console.log("🚀 ~ file: CarVersion2.vue:73 ~ selectCar ~ car:", car)
			this.selectedCar = car;
		},
		cancel() {
			this.selectedCar = undefined;
		},
		save(car) {
			const index = this.cars.findIndex(c => c.id === car.id);
			this.cars.splice(index, 1, car);
			this.cars = [...this.cars];
			this.selectedCar = undefined;

		},
		async getCars() {
			return new Promise(resolve => {
				setTimeout(() => {
					resolve(mockCars);
				}, 1500);
			});
		},
		async loadCars() {
			this.cars = [];
			this.message = 'Getting cars';
			this.cars = await this.getCars();
			this.message = undefined;
		}
	},
	watch: {
		'selectedCar.cc': {
			immediate: true,
			deep: true,
			handler(newValue) {
				if (newValue > 2000) {
					this.ccMessage = 'This is a big car';
				} else {
					this.ccMessage = 'This is a small car';
				}
			}
		}
	},
}
</script>
