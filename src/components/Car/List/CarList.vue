<template>
	<div v-if="message" class="alert alert-primary" role="alert">
		{{ message }}
	</div>
	<div class="card-container" v-if="!message">
		<div v-for="car in cars" :key="car.name">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">{{ car.name }}</h5>
					<p class="card-text">{{ car.description }} </p>
					<p class="card-text">{{ car.cc }} </p>
					<button type="button" class="btn btn-primary" @click="selectCar(car)">Seleccionar</button>
				</div>
			</div>
		</div>
	</div>

	<div class="selected-car-box" v-if=selectedCar>
		<input type="text" v-model="selectedCar.name" />
		<input type="number" v-model="selectedCar.cc" />
		<span>Selected car</span>
		<span>{{ fullDescription }}</span>
		<span>{{ ccMessage }}</span>
	</div>
</template>

<script>

export default {
	name: 'CarList',
	props: {
		cars: {
			type: Array,
			default: () => []
		},
		message: {
			type: String,
			default: undefined
		}
	},
	emits: ['car-selected'],
	methods: {
		selectCar(car) {
			this.$emit('car-selected', car);
		}
	}
}
</script>
<style>
.card-container {
	display: flex;
	justify-content: space-evenly;
}
.selected-car-box{
display: flex;
    flex-direction: column;
    align-items: center;
	padding: 5px;
}
</style>