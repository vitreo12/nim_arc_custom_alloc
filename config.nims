#This approach needs useMalloc
--gc:arc
--define:useMalloc

#Replace default malloc implementation with custom one
#Depending on the GC used, different files should be patched.
#With --gc:arc + -d:useMalloc, "malloc" is the file to be patched ("mm/malloc.nim").
#Look for all definitions of "allocImpl" in Nim's source code to find all the others.
patchFile("stdlib", "malloc", "custom_malloc")
