.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor al, -15
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
btc bx, dx
or sil, -8
or bl, 73
and bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 43
xor dl, sil
and dil, 122 # instrumentation
cmovnb rdi, rcx
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
cmovnle esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
