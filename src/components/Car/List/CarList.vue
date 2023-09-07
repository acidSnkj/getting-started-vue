<template>
	<div v-if="message" class="alert alert-primary" role="alert">
		{{ message }}
	</div>
	<div v-if="!message">
		<div v-for="car in cars" :key="car.name">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">{{ car.name }}</h5>
					<p class="card-text">{{ car.description }} </p>
					<p class="card-text">{{ car.cc }} </p>
					<button type="button" class="btn btn-primary" @click="selectedCar = car">Seleccionar</button>
				</div>
			</div>
		</div>
	</div>

	<div v-if=selectedCar>
		<input type="text" v-model="selectedCar.name" />
		<input type="number" v-model="selectedCar.cc" />
		<span>Selected car</span>
		<span>{{ fullDescription }}</span>
		<span>{{ ccMessage }}</span>
	</div>
</template>

<script>
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
	},
]
export default {
	name: 'CarList',
	data() {
		return {
			selectedCar: undefined,
			cars: [],
			message: undefined,
			ccMessage: ''
		}
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
		async getCars() {
			return new Promise(resolve => {
				setTimeout(() => {
					console.log("resovling")
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
			handler(newValue, oldValue) {
				console.log("oldValue", oldValue)
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