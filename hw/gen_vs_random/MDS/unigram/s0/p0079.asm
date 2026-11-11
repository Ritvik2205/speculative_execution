.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -7
xor sil, 93
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
test dil, -67
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and dx, si
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
or ax, 6575
jmp .bb_0.1
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
cmovnl edx, edi
cmovz si, dx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
btr rbx, 96
and dl, -115 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
xor sil, 93
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
test rcx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
