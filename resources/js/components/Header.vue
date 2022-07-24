<template>
    <header>
        <v-toolbar elevation="6">
            <router-link to="/">
                <v-btn text color="primary">Все заявки</v-btn>
            </router-link>
            <router-link to="/application">
                <v-btn text color="primary">Добавить новую заявку</v-btn>
            </router-link>
        </v-toolbar>
    </header>
</template>

<script>
export default {
    name: "Header",
};
</script>

<style>
header {
    margin-bottom: 30px;
}
</style>
