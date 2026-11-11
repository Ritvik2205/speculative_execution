.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 20
add dx, bx
add al, 120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 3
imul rdi, rsi, -45
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 12
imul eax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add cl, 107 # instrumentation
lea edx, qword ptr [rbx + rdi]
bts ecx, 84
bswap rcx
not ecx
and sil, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
add dl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
