import pickle

# user_id = 'kim'
# lv = 50
# ch = 'human'
# items = {"sword" : 1, "kite : " : 0}
#
# with open("user1.p", "wb") as f:
#     pickle.dump(user_id, f)
#     pickle.dump(lv, f)
#     pickle.dump(ch, f)
#     pickle.dump(items, f)


with open("user1.p", "rb") as f:
    uid = pickle.load(f)
    lv = pickle.load(f)
    ch = pickle.load(f)
    items = pickle.load(f)
print(uid)
print(lv)
print(ch)
print(items)