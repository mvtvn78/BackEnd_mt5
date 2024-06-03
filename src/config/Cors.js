const corsOptions = (origin_user, origin_dashboard) => {
    return {
        origin: [origin_user,origin_dashboard],
        methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
        optionsSuccessStatus: 200 
    }
}
module.exports = corsOptions