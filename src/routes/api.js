const express = require('express')
const router = express.Router()
const {getNations, addNation, updateNation,removeNation,searchNations} = require("../controllers/apiNation")
const {registerAPI,loginAPI,forgotPass,getUsers,UpdateUser,RemoveUser,searchUsers} = require("../controllers/apiUser")
const {getFollowList,addFollow,removeFollow,searchFollow} = require("../controllers/apiFollower")
const { getFavSongs, addFavSong, removeFavSong ,searchFav} = require('../controllers/apiFav')
const { getListendSong, addListendSong,searchListendSong ,ChangeTimeListendSong,getDeatilsListendListByCode} = require('../controllers/apiListendSong')
const { getUserTypes, addUserType, updateUserType, removeUserType,searchUserTypes } = require('../controllers/apiUserType')
const { getArtists, addArtist, removeArtist, updateArtist,searchArtist } = require('../controllers/apiArtist')
const { addReleaseALB, getReleaseALBs,searchReleaseALBs, removeReleaseALB } = require('../controllers/apiReleaseALB')
const { getReleaseSong, addReleaseSong, removeReleaseSong,searchReleaseSong } = require('../controllers/apiReleaseSong')
const { updateAlbum, removeAlbum, addAlbum, getAlbums,searchAlbum } = require('../controllers/apiALb')
const { getSongs, addSong, removeSong, updateSong,searchSong ,getDetailListSongs,IncreaseViewSong} = require('../controllers/apiSong')
const { getGereSongs,addGenreSong,removeGenreSong,updateGenreSong,searchGenre } = require('../controllers/apiGenreSong')
const initApiRoutes = (app) => {
    //Follow API
    router.get("/followers",getFollowList)
    router.post('/followers_add',addFollow)
    router.delete('/followers_remove',removeFollow)
    router.get('/followers_search',searchFollow)
    //Fav API
    router.get("/favorites_list",getFavSongs)
    router.get("/favorites_search",searchFav)
    router.post("/favorites_list_add",addFavSong)
    router.delete("/favorites_list_remove",removeFavSong)
    //Listened API
    router.get("/listened_list",getListendSong)
    router.post("/listened_list_add",addListendSong)
    router.get("/listened_list_search",searchListendSong)
    router.put("/listened_list_time",ChangeTimeListendSong)
    router.get("/listened_list_code",getDeatilsListendListByCode)
    //User API
    router.post("/register",registerAPI)
    router.post("/login",loginAPI)
    router.post("/forgot",forgotPass)
    router.get("/users",getUsers)
    router.get("/user_search",searchUsers)
    router.put("/user_update",UpdateUser)
    router.delete("/user_remove",RemoveUser)

    //UserType API
    router.get("/usertypes",getUserTypes)
    router.post("/usertypes_add",addUserType)
    router.put("/usertypes_update",updateUserType)
    router.delete("/usertypes_remove",removeUserType)
    router.get("/usertypes_search",searchUserTypes)
    //Nation API
    router.get("/nations",getNations)
    router.post("/nation_add",addNation)
    router.put("/nation_update",updateNation)
    router.delete("/nation_remove",removeNation)
    router.get("/nations_search",searchNations)
    //Artist API
    router.get("/artists",getArtists)
    router.post("/artists_add",addArtist)
    router.delete("/artists_remove",removeArtist)
    router.put("/artists_update",updateArtist)
    router.get("/artists_search",searchArtist)

    //ReleaseALB API
    router.get("/release_album",getReleaseALBs)
    router.post("/release_album_add",addReleaseALB)
    router.delete("/release_album_remove",removeReleaseALB)
    router.get("/release_album_search",searchReleaseALBs)
    //ReleaseSong API
    router.get("/release_song",getReleaseSong)
    router.post("/release_song_add",addReleaseSong)
    router.delete("/release_song_remove",removeReleaseSong)
    router.get("/release_song_search",searchReleaseSong)
    //Album API
    router.get("/albums",getAlbums)
    router.post("/album_add",addAlbum)
    router.delete("/album_remove",removeAlbum)
    router.put("/album_update",updateAlbum)
    router.get("/album_search",searchAlbum)
    //Song API
    router.get("/songs",getSongs)
    router.post("/song_add",addSong)
    router.delete("/song_remove",removeSong)
    router.put("/song_update",updateSong)
    router.get("/song_search",searchSong)
    router.get("/song_details",getDetailListSongs)
    router.put("/increase_view",IncreaseViewSong)
    //Genre Song API
    router.get('/genre',getGereSongs)
    router.post("/genre_add",addGenreSong)
    router.delete("/genre_remove",removeGenreSong)
    router.put("/genre_update",updateGenreSong)
    router.get('/genre_search',searchGenre)

    //URL : domain + /api/v1
    return app.use("/api/v1",router)
}
module.exports = initApiRoutes