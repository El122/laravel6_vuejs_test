<template>
    <v-card class="p-3">
        <h1 class="mb-2">{{ data.title }}</h1>
        <p>{{ data.price }}</p>
        <v-divider></v-divider>
        <div>
            <v-container>
                <v-row v-if="data.photo?.length">
                    <v-col
                        v-for="photo of data.photo"
                        :key="photo.id"
                        class="d-flex child-flex"
                        cols="4"
                    >
                        <v-img
                            :src="photo.photo"
                            :lazy-src="photo.photo"
                            aspect-ratio="1"
                            class="grey lighten-2"
                        >
                            <template v-slot:placeholder>
                                <v-row
                                    class="fill-height ma-0"
                                    align="center"
                                    justify="center"
                                >
                                    <v-progress-circular
                                        indeterminate
                                        color="grey lighten-5"
                                    ></v-progress-circular>
                                </v-row>
                            </template>
                        </v-img>
                    </v-col>
                </v-row>
                <v-row v-else>
                    <v-img
                        height="250"
                        :src="data.main_photo?.photo"
                        :lazy-src="data.main_photo?.photo"
                        aspect-ratio="1"
                        class="grey lighten-2"
                    >
                        <template v-slot:placeholder>
                            <v-row
                                class="fill-height ma-0"
                                align="center"
                                justify="center"
                            >
                                <v-progress-circular
                                    indeterminate
                                    color="grey lighten-5"
                                ></v-progress-circular>
                            </v-row>
                        </template>
                    </v-img>
                </v-row>
                <v-row>
                    <p style="white-space: pre-wrap">
                        <b>Описание:</b> {{ data.description }}
                    </p>
                </v-row>
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
            data: {},
        };
    },
    async mounted() {
        const result = await sendRequest({
            path: `/api/application/${this.$route.params.id}?fields=description,photos`,
            method: "GET",
        });

        if (result.code == 200) {
            this.data = result.data;
        }
    },
    methods: {},
};
</script>
