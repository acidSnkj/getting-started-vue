<template>
	<div v-if="message" class="alert alert-primary" role="alert">
		{{ message }}
	</div>
	<div class="card-container" v-if="!message">
		<div v-for="car in cars" :key="car.id">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">{{ car.name }}</h5>
					<p class="card-text">{{ car.description }} </p>
					<p class="card-text">{{ car.cc }} </p>
					<router-link :to="{ name: 'car-details', params: { id: car.id } }"
						class="btn btn-primary">Seleccionar</router-link>
				</div>
			</div>
		</div>
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
	data() {
		return {
			ccMessage: ''
		}
	},
}
</script>
<style>
.card-container {
	display: flex;
	justify-content: space-evenly;
}

.selected-car-box {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 5px;
}
</style>