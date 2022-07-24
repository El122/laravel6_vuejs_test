export const sendRequest = async ({ path, data = {}, method = "GET" }) => {
    try {
        if (method === "GET")
            return await fetch(path, {
                method,
                headers: {
                    url: "/payment",
                },
            }).then((res) => res.json());

        return await fetch(path, {
            method,
            headers: {
                "Content-Type": "application/json",
                Accept: "application/json",
                url: "/payment",
            },
            body: JSON.stringify(data),
        }).then((res) => res.json());
    } catch (e) {
        console.log(e);
    }
};
