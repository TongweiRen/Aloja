import os
import time

start = time.time()
for i in range(500):
    os.system('lli-10 mutants/HelloworldPublisher_mutated.ll')

end = time.time()
print("[+] Time taken: " + str(end - start))
