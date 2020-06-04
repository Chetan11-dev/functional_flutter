final store = {};
saveToStore(key, value) {
  store[key] = value;
}

Map serveStore() {
  return store;
}

void logStore() {
  print(store);
}


getFromStore(key) {
  return store[key] ; 
} 