.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
btr bx, si
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
btc rdx, rax
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
test ebx, -2015966884
jmp .bb_0.1
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and dil, -14 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
test al, -7
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 30
cmovnle ecx, edx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
