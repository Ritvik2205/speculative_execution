.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
cmovnp rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
cmovle ax, cx
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
btr ax, bx
bts bx, dx
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
cmovnle edx, ebx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
xor edi, 87
xor si, 80
btr bx, dx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and di, 91
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and bl, 3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
