# SO_LONG

Use "make" to compile the standard executable called so_long :
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/b3c6ab14-22a0-4d1b-be69-6ce2fc4dc6fc)
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/dc7488f9-2558-44ec-9c9d-125d04cc2db3)

The executable is use like that : 
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/6b9c09cf-4359-4d7f-8ae5-e12e138ee68a)
./so_long <map>.ber 
The ".ber" is necessary, if you try to launch a map without an error will be displayed

Use "make bonus" to compile the bonus executable called so_long_bonus : 
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/8fd309d2-84fd-4e78-a68f-d7afdb770571)
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/c975a419-bbb9-443a-8502-0f4e90f53079)
The bonus executable include ennemy in mouvement, shooting and more !


The executable is use like that : 
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/248cf619-c3fe-4011-8c5b-a596e9aa48cc)
./so_long_bonus <map>.ber 
The ".ber" is necessary, if you try to launch a map without an error will be displayed


Use "make map" to get a map generator :
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/56c3c42e-d13a-48d0-83b2-3fcd1e456554)
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/923ed4d7-08d8-4f69-ba3a-ce072f0eff64)

To generate map, use "gen_map" like that : 
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/b30f7c0b-32d9-42a3-bf8f-74c1c4a19cb3)
./gen_map <height> <width> <walls probability> <collectible> optional:<ennemies>
Prefere this syntax for facility : 
![image](https://github.com/ArhKaZ/SO_LONG/assets/59173332/cd0c1607-1e5b-4592-9c71-4c540e33606c)
This will create the file mynewmap.ber, which contain you'r new random map
Don't forget the .ber at the end of the file name !!
