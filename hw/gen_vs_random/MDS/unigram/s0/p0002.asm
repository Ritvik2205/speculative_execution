.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -95
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and al, 57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
cmovnbe bx, di
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
or bl, sil
or di, 9
cmovl ebx, ebx
btr edx, 255
and dil, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmovnle edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
