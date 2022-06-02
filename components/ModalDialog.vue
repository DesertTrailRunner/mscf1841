<script lang='ts'>
/**
 * ModalDialog Vue2
 * @date 2022-06-02
 */
import Vue, { PropOptions } from "vue";

interface ICompData {
  mutableValue: boolean;
  modalElement: Element | null;
}
export default Vue.extend({
    props: {
        value: { type: Boolean, required: true },
        heading: String,
        width: { type: String, default: "60%" },
        height: { type: String, default: "60%" },
        message: { type: String, default: "Click or tap anywhere to close" },
        clickAnywhereToClose: { type: Boolean, default: true }
    },
    data() {
        return {
            mutableValue: false,
            modalElement: null
        } as ICompData;
    },
    watch: {
        value: {
            handler() {
                // @ts-ignore
                this.mutableValue = this.value;
            }, immediate: true
        },
        mutableValue() {
            this.$emit("input", this.mutableValue);
        }
    },
    methods: {
        openModal(): void {
            this.mutableValue = true;
            this.modalElement = this.$refs["modal-container"] as Element;
            if (this.modalElement) {
                document.body.appendChild(this.modalElement);
            }
        },
        closeModal(force: boolean): void {
            if (this.clickAnywhereToClose || force) this.mutableValue = false;
        }
    },
    beforeDestroy() {
        if (this.modalElement) {
            document.body.removeChild(this.modalElement);
        }
    }
});
</script>

<template>
    <div ref="modal-container" class="modal-container" v-show="mutableValue" @click="closeModal(false)"
        title="Click or tap anywhere to close">
        <div class="modal-backdrop"></div>
        <div :class="{ 'modal-element': true, 'modal-no-message': message == '' }"
            :style="{ width: width, height: height }">
            <div v-if="heading" class="modal-title">{{ heading }}</div>
            <div class="modal-close" @click="closeModal(true)" title="Close the details">X</div>
            <div class="modal-content">
                <slot />
            </div>
            <div v-if="message" class="modal-message">{{ message }}</div>
        </div>
    </div>
</template>

<style scoped>
.modal-container {
    width: 100vw;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 99999;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
}

.modal-backdrop {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #000;
    opacity: 0.75;
}

.modal-element {
    z-index: inherit;
    border: 5px solid #333;
    background-color: #fafafa !important;
    box-shadow: 0 11px 15px -7px rgba(0, 0, 0, 0.4),
        0 24px 38px 3px rgba(0, 0, 0, 0.3), 0 9px 46px 8px rgba(0, 0, 0, 0.3);
    display: grid;
    grid-template-areas:
        "title close"
        "content content"
        "message message";
    grid-template-columns: auto 50px;
    grid-template-rows: 30px auto 20px;
}

.modal-title {
    grid-area: title;
    font-family: "EYInterstate", Arial, sans-serif;
    font-weight: bold;
    background-color: #c4c4cd !important;
    color: #2e2e38 !important;
    display: flex;
    align-items: center;
    justify-content: center;
}

.modal-close {
    grid-area: close;
    font-family: "EYInterstate", Arial, sans-serif;
    background-color: #e0e0e7 !important;
    color: #2e2e38 !important;
    font-weight: 1200;
    display: flex;
    align-items: center;
    justify-content: center;
}

.modal-close:hover {
    background-color: #ffe600 !important;
}

.modal-content {
    grid-area: content;
    margin: 1em;
    overflow-y: auto;
}

.modal-message {
    font-family: "EYInterstate", Arial, sans-serif;
}

.modal-message {
    grid-area: message;
    color: #333;
    text-align: center;
}

.modal-no-message {
    grid-template-areas:
        "title close"
        "content content";
    grid-template-rows: 30px auto;
}

@media screen and (max-width: 1024px) {
    .modal-element {
        width: 100% !important;
        height: 80% !important;
    }
}
</style>