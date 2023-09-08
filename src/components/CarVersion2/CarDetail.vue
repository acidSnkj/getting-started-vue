<template>
	<div style="margin-left: 20px">
		<form>
			<div class="form-group">
				<label for="carName">Nombre del carro</label>
				<input type="text" class="form-control" id="carName" placeholder="E.g. Ford Focus" v-model="clonedCar.name">
			</div>
			<br />
			<div class="form-group">
				<label for="carDescription">Descripcion</label>
				<input type="text" class="form-control" id="carDescription" placeholder="E.g. Automatico"
					v-model="clonedCar.description">
			</div>
			<br />
			<button type="button" class="btn btn-danger" style="margin-right: 10px;" @click="cancel">Cancelar</button>
			<button type="button" class="btn btn-primary" @click="save">Guardar</button>
		</form>
	</div>
</template>

<script>
import { mapGetters, mapActions } from 'vuex';
import cloneDeep from 'lodash/cloneDeep';

export default {
	props: {
		car: {
			type: Object,
			default: () => { }
		},
		id: {
			type: Number,
			default: 0
		}
	},
	data() {
		return {
			clonedCar: { ...this.car }
		}
	},
	emits: ['cancel', 'save'],
	watch: {
		car: {
			handler() {
				this.clonedCar = { ...this.car };
			},
			deep: true
		}
	},
	methods: {
		...mapActions(['updateCarAction']),
		cancel() {
			// this.$emit('cancel');
			this.$router.push({ name: 'car-list' });
		},
		save() {
			// this.$emit('save', this.clonedCar);
			// this.$router.push({ name: 'car-list' });
			this.updateCarAction(this.clonedCar);
		}
	},
	computed: {
		...mapGetters(['getCarById'])
	},
	created() {
		this.clonedCar = cloneDeep(this.getCarById(this.id));
	}
}
</script>

<style lang="scss" scoped></style>