<template>
    <v-card class="p-3" data-app>
        <v-container class="title">
            <h1 class="mb-2">Все объявления</h1>
            <v-col class="d-flex" cols="12" sm="6" md="3">
                <v-select
                    :items="orderItems"
                    label="Сортировать"
                    v-model="select"
                    item-value="id"
                    item-text="name"
                    solo
                    dense
                    @change="sortItems"
                ></v-select>
            </v-col>
        </v-container>
        <v-divider></v-divider>
        <v-container>
            <v-row>
                <v-col
                    cols="12"
                    sm="6"
                    md="3"
                    v-for="item of pageData"
                    :key="item.id"
                >
                    <v-card class="mx-auto my-12" max-width="374">
                        <template slot="progress">
                            <v-progress-linear
                                color="deep-purple"
                                height="10"
                                indeterminate
                            ></v-progress-linear>
                        </template>

                        <v-img
                            height="250"
                            :src="item.main_photo?.photo"
                        ></v-img>

                        <v-card-title>{{ item.title }}</v-card-title>

                        <v-card-text>
                            <div class="my-4 text-subtitle-1">
                                Цена: {{ item.price }}
                            </div>
                        </v-card-text>

                        <v-card-actions>
                            <router-link :to="'/application/' + item.id">
                                <v-btn color="deep-purple lighten-2" text>
                                    Подробнее
                                </v-btn>
                            </router-link>
                        </v-card-actions>
                    </v-card>
                </v-col>
            </v-row>
        </v-container>
        <div>
            <v-container>
                <div class="text-center">
                    <v-pagination
                        v-model="page"
                        :length="length"
                        circle
                        @input="onPageChange"
                    ></v-pagination>
                </div>
            </v-container>
        </div>
    </v-card>
</template>

<script>
import { sendRequest } from "../api/api";

export default {
    name: "Home",
    data() {
        return {
            orderItems: [
                {
                    id: 0,
                    name: "По цене(по возрастанию)",
                },
                {
                    id: 1,
                    name: "По цене(по убыванию)",
                },
                {
                    id: 2,
                    name: "По дате создания(по убыванию)",
                },
                {
                    id: 3,
                    name: "По дате создания(по убыванию)",
                },
            ],
            data: [],
            pageData: [],
            page: 1,
            length: 0,
            select: {},
        };
    },
    async mounted() {
        const result = await sendRequest({
            path: `/api/application`,
            method: "GET",
        });

        if (result.code == 200) {
            this.data = result.data;
            this.pageData = this.data.slice(0, this.page * 10);
            this.length = Math.ceil(this.data.length / 10);
        }
    },
    methods: {
        onPageChange() {
            this.pageData = this.data.slice(
                this.page * 10 - 10,
                this.page * 10
            );
        },
        sortItems() {
            console.log(this.select);
            switch (this.select) {
                case 0:
                    this.data = this.data.sort((a, b) =>
                        a.price > b.price ? 1 : -1
                    );
                    this.page = 1;
                    this.pageData = this.data.slice(0, this.page * 10);
                    break;
                case 1:
                    this.data = this.data.sort((a, b) =>
                        a.price < b.price ? 1 : -1
                    );
                    this.page = 1;
                    this.pageData = this.data.slice(0, this.page * 10);
                    break;
                case 2:
                    this.data = this.data.sort((a, b) =>
                        a.id > b.id ? 1 : -1
                    );
                    this.page = 1;
                    this.pageData = this.data.slice(0, this.page * 10);
                    break;
                case 3:
                    this.data = this.data.sort((a, b) =>
                        a.id < b.id ? 1 : -1
                    );
                    this.page = 1;
                    this.pageData = this.data.slice(0, this.page * 10);
                    break;
            }
        },
    },
};
</script>

<style>
.theme--light.v-pagination .v-pagination__item--active {
    background-color: #464646 !important;
}
.title {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

@media screen and (max-width: 750px) {
    .title {
        flex-direction: column;
    }
}
</style>
