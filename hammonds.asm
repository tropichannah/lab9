COMMENT!
Write an assembly program to find the largest item in an array and store it in a variable named MAXIMUM.
• Hint: Use both Jump and loop instructions to write the program.
• logic:
• Assume that the first item of the array is the maximum and store it in variable MAXIMUM
• Write a loop. Inside the loop, compare the each array item with the maximum
• If the array item is greater than the MAXIMUM, update MAXIMUM with that array item.
!

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD

.data
	Array WORD 10, 2, 23, 45, 21, 11
	MAXIMUM WORD ?

.code
main PROC
	mov ecx, LENGTHOF array
	mov esi, 0									;set esi to 0

	mov ax, array[esi]						;load first array element and store into maximum
							
	L1:											;write loop to cmp each item
		cmp array[esi], ax
		JA if_block								;loop lasts as long as the array size
		JMP update_index

		if_block:
		mov ax, array[esi]					;if element is grater than maximum variabl 

		update_index:										;replace the new maximum
			add esi, 2
	loop L1
	mov MAXIMUM, ax
INVOKE ExitProcess, 0

main ENDP
END main