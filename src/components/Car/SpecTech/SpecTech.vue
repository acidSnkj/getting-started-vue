<template>
	<!-- TODO: Crear vista detalle del carro seleccionado -->
	<div class="container">
		<div class="container-all">
			<span>Vista detalle carro</span>
		<span>{{ car.name }}</span>
		<input type="text" v-model=car.name />
		<button class="btn btn-secondary" @click=cancel>Cancel</button>
		<button class="btn btn-primary" @click=save>Save</button>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" v-model=car.active id="flexCheckDefault">
			<div class="badge text-bg-success">
			<pre>
			{{ message }}
		</pre>
		</div>
		</div>
		</div>
<div class="form-check-dad">
	<div class="form-check">
			<label class="form-check-label" for="flexCheckDefault">
				Active
			</label>
			<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" v-model=car.color
				value="green">
			<label class="form-check-label" for="flexRadioDefault1">
				Green
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" v-model=car.color
				value="red">
			<label class="form-check-label" for="flexRadioDefault2">
				Rojo diamante
			</label>
					<div :style="{ 'background-color': car.color, 'width': '40px', 'height': '20px' }" />
</div>

		</div>
	<div class="selector-dad-box">
					<div class="selector-dad">
						<div :class="{ selectorChild: !car.tr }">
						</div>
						<select class=" form-select" v-model="car.tr" aria-label="Default select example" @keyup.esc="clear">
							<option disabled value>Selecccione tipo de traccion
							</option>
							<option>Traccion Delantera</option>
							<option>Traccion Trasera</option>
							<option>Traccion en las 4 ruedas</option>
						</select>
					</div>
	</div>
	</div>
</template>


<script>
export default {
	name: 'SpecTech',
	data() {
		/* TODO: Determinar atributos del carro
			car: {
				name: "Mazda 6",
				description: "Beautiful car",
				engine: '',
				transmission: '',
				year: 'YYYY-MM-DD',
				cc: 5000,
			}
		*/
		return {
			car: {
				name: "Mazda 6",
				description: "Beautiful car",
				engine: '',
				transmission: '',
				year: 'YYYY-MM-DD',
				cc: 5000,
				active: false,
				color: '',
				tr: '',
			},
			message: ''
		}
	},
	methods: {
		cancel() {
			this.message = '';
		},
		save() {
			this.message = JSON.stringify(this.car, null, '\n');
		},
		clear() {
			this.car.tr = '';
		}
	},
}
</script>
<style>
.container {
	display: flex;
	justify-content: center;
	flex-direction: row;
	justify-content: space-between;
}

.form-check-dad {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.selectorChild {
	width: 10px;
	height: 40px;
	background-color: red;
	border-radius: 10px;
}
.selector-dad {
	display: flex;
}
.container-all {
	display: flex;
	justify-content: center;
	flex-direction: column;
}
.selector-dad-box {
	display: flex;
	justify-content: center;
	flex-direction: column;
}
</style>