.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or cl, bl
cmovnle edx, ecx
and ax, -10351
cmovnbe rdx, rdx
btc rax, rax
and dl, -72 # instrumentation
not dil
and rdi, rdi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and cl, -71
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 61
test bl, -14
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 89
btr dx, 47
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
cmovnz edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
