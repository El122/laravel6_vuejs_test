<template>
    <v-card class="p-3">
        <h1 class="mb-2">Добавить новое объявление</h1>
        <v-divider></v-divider>
        <div>
            <v-container>
                <v-row>
                    <v-col cols="12">
                        <v-text-field
                            label="Название"
                            placeholder="Название"
                            solo
                            maxlength="200"
                            v-model="formData.title"
                            inputmode="text"
                        ></v-text-field>
                    </v-col>
                    <v-col cols="12">
                        <v-textarea
                            solo
                            label="Описание"
                            v-model="formData.description"
                            maxlength="1000"
                            inputmode="text"
                        ></v-textarea>
                    </v-col>
                    <v-col cols="12" sm="4">
                        <v-text-field
                            label="Ссылка на фото"
                            solo
                            v-model="formData.photos[0]"
                            @blur="checkArray"
                            inputmode="url"
                        ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="4">
                        <v-text-field
                            label="Ссылка на фото"
                            solo
                            v-model="formData.photos[1]"
                            @blur="checkArray"
                            inputmode="url"
                            :disabled="!formData.photos[0]"
                        ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="4">
                        <v-text-field
                            label="Ссылка на фото"
                            solo
                            v-model="formData.photos[2]"
                            @blur="checkArray"
                            inputmode="url"
                            :disabled="!formData.photos[1]"
                        ></v-text-field>
                    </v-col>
                    <v-col cols="12">
                        <v-text-field
                            label="Цена"
                            solo
                            v-model="formData.price"
                            inputmode="numeric"
                        ></v-text-field>
                    </v-col>
                </v-row>
                <v-alert
                    border="right"
                    colored-border
                    type="error"
                    elevation="2"
                    v-if="fetchMessage"
                >
                    {{ fetchMessage }}
                </v-alert>
                <v-btn rounded @click="sendForm" :disabled="!checkSubmit"
                    >Добавить</v-btn
                >
            </v-container>
        </div>
    </v-card>
</template>

<script>
import { sendRequest } from "../api/api";

export default {
    name: "NewApplication",
    data() {
        return {
            formData: {
                title: "",
                description: "",
                photos: [],
                price: "",
            },
            fetchMessage: "",
        };
    },
    methods: {
        async sendForm() {
            const result = await sendRequest({
                path: `/api/application`,
                data: this.formData,
                method: "POST",
            });

            if (result.code == 200) {
                this.fetchMessage = `Объявление №${result.data} успешно добавлено`;
                this.formData = {
                    title: "",
                    description: "",
                    photos: [],
                    price: "",
                };
            } else this.fetchMessage = result.message;
        },
        checkArray() {
            this.formData.photos = this.formData.photos.filter(Boolean);
        },
    },
    computed: {
        checkSubmit() {
            if (
                this.formData.title &&
                this.formData.description &&
                this.formData.photos[0] &&
                this.formData.price
            )
                return true;
            return false;
        },
    },
};
</script>
