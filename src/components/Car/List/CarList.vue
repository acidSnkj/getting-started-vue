<template>
	<div class="carlist-container" v-for="car in cars" :key="car.name">
		<div class="card" style="width: 18rem;">
			<div class="card-body">
				<h5 class="card-title">{{ car.name }}</h5>
				<p class="card-text">{{ car.description }} </p>
				<button type="button" class="btn btn-lg btn-danger" data-bs-toggle="popover" data-bs-title="Popover title" data-bs-content="And here's some amazing content. It's very engaging. Right?" @click="selectedCar = car">Seleccionar</button>
			</div>
		</div>
	</div>
	<div v-if=selectedCar>
		<span>Selected car</span>
		<span>{{ selectedCar.name }}</span>
	</div>
</template>

<script>
export default {
	name: 'CarList',
	data() {
		return {
			selectedCar: undefined,
			cars: [
				{
					id:1,
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
					id:2, 
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
					id:3,
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
		}
	}
}
</script>
<style>
.carlist-container {
	display: flex;
}
</style>