import time
import os

start = time.time()
os.system('lli-10 mutants/HelloworldSubscriber_mutated.ll')
end = time.time()
print("[+] Time taken: " + str(end - start))
