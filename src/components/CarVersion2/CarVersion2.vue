<template>
	<div style="display: flex; justify-content: flex-start; flex-direction: row">
		<CarList :cars="cars" :message="message" />
	</div>
</template>

<script>
import CarList from '@/components/Car/List/CarList'
import { mapState, mapActions } from 'vuex';

export default {
	name: 'CarVersion2',
	data() {
		return {
			message: undefined,
			ccMessage: ''
		}
	},
	components: {
		CarList,
	},
	computed: {
		fullDescription() {
			if (!this.selectedCar) return '';
			const { name, color } = this.selectedCar;
			return `${name} is ${color}`;
		},
		...mapState(['cars'])
	},
	created() {
		this.loadCars();
	},
	methods: {
		...mapActions(['getCarsAction']),
		cancel() {
			this.selectedCar = undefined;
		},
		save(car) {
			const index = this.cars.findIndex(c => c.id === car.id);
			this.cars.splice(index, 1, car);
			this.cars = [...this.cars];

		},

		async loadCars() {
			// this.cars = [];
			this.message = 'Getting cars';
			// this.cars = await this.getCars();
			// await this.$store.dispatch('getCarsAction');
			await this.getCarsAction();
			this.message = undefined;
		}
	}
}
</script>
