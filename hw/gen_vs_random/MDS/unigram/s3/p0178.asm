.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 25
not bl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
xor dl, bl
and dl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
btc cx, 104
cmovno edi, eax
and cl, 8
cmovnz bx, bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
xor di, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
xor dx, 93
and dl, -7
cmovs rcx, rdx
and dil, bl
test dil, -72
cmovnle edi, ecx
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
