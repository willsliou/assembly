.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data
	;Place your variables and memory allocations here
	myName db "Bill Smith"
.code
main PROC
	nop

	;Place your program code here
	mov eax, 11111111h
	mov ebx, 22222222h
	mov ecx, 33333333h
	mov edx, 44444444h

	add eax, 1h
	sub eax, 1h

	mov eax, 10 ; move decimal to eax
	mov ah, 22h		;subregister of eax
	mov al, 33h		;subregister of eax
	mov ax, 5555h
	mov eax, 66666666h

	mov eax, 8h
	mov al, [myName]
	mov al, [myName + 1]
	mov al, [myName + 2]

	fldpi		;load into floating point stack, float number
		nop
	INVOKE ExitProcess,0
main ENDP
END main