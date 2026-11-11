.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 120 # instrumentation
cmovnp si, cx
bt di, cx
test rdx, 37
or dx, 125
test cl, al
and dl, 47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
cmovs ecx, edx
xor esi, 100
bt bx, 253
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
or eax, -927349615
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
test ebx, -2015966884
and esi, 29
and dl, dl
cmovs edi, edi
btc di, dx
xor rbx, 89
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
