const express = require('express')
const router = express.Router()
const {getNations, addNation, updateNation,removeNation} = require("../controllers/apiNation")
const {registerAPI,loginAPI,forgotPass,getUsers,UpdateUser,RemoveUser} = require("../controllers/apiUser")
const {getFollowList,addFollow,removeFollow} = require("../controllers/apiFollower")
const { getFavSongs, addFavSong, removeFavSong } = require('../controllers/apiFav')
const { getListendSong, addListendSong } = require('../controllers/apiListendSong')
const { getUserTypes, addUserType, updateUserType, removeUserType } = require('../controllers/apiUserType')
const { getArtists, addArtist, removeArtist, updateArtist } = require('../controllers/apiArtist')
const { addReleaseALB, getReleaseALBs } = require('../controllers/apiReleaseALB')
const { getReleaseSong, addReleaseSong, removeReleaseSong } = require('../controllers/apiReleaseSong')
const { updateAlbum, removeAlbum, addAlbum, getAlbums } = require('../controllers/apiALb')
const { getSongs, addSong, removeSong, updateSong } = require('../controllers/apiSong')
const initApiRoutes = (app) => {
    //Follow API
    router.get("/followers",getFollowList)
    router.post('/followers_add',addFollow)
    router.delete('/followers_remove',removeFollow)
    //Fav API
    router.get("/favorites_list",getFavSongs)
    router.post("/favorites_list_add",addFavSong)
    router.delete("/favorites_list_remove",removeFavSong)
    //Listened API
    router.get("/listened_list",getListendSong)
    router.post("/listened_list_add",addListendSong)
    //User API
    router.post("/register",registerAPI)
    router.post("/login",loginAPI)
    router.post("/forgot",forgotPass)
    router.get("/users",getUsers)
    router.put("/user_update",UpdateUser)
    router.delete("/user_remove",RemoveUser)
    //UserType API
    router.get("/usertypes",getUserTypes)
    router.post("/usertypes_add",addUserType)
    router.put("/usertypes_update",updateUserType)
    router.delete("/usertypes_remove",removeUserType)
    //Nation API
    router.get("/nations",getNations)
    router.post("/nation_add",addNation)
    router.put("/nation_update",updateNation)
    router.delete("/nation_remove",removeNation)
    //Artist API
    router.get("/artists",getArtists)
    router.post("/artists_add",addArtist)
    router.delete("/artists_remove",removeArtist)
    router.put("/artists_update",updateArtist)

    //ReleaseALB API
    router.get("/release_album",getReleaseALBs)
    router.post("/release_album_add",addReleaseALB)
    router.delete("/release_album_remove",addReleaseALB)
    //ReleaseSong API
    router.get("/release_song",getReleaseSong)
    router.post("/release_song_add",addReleaseSong)
    router.delete("/release_song_remove",removeReleaseSong)
    //Album API
    router.get("/albums",getAlbums)
    router.post("/album_add",addAlbum)
    router.delete("/album_remove",removeAlbum)
    router.put("/album_update",updateAlbum)

    //Song API
    router.get("/songs",getSongs)
    router.post("/song_add",addSong)
    router.delete("/song_remove",removeSong)
    router.put("/song_update",updateSong)

    //Genre Song API
    router.get('/genre',getUserTypes)
    router.post("/genre_add",addUserType)
    router.delete("/genre_remove",removeUserType)
    router.put("/genre_update",updateUserType)

    //URL : domain + /api/v1
    return app.use("/api/v1",router)
}
module.exports = initApiRoutes