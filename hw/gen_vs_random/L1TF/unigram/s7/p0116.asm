.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rsi, 42
imul bx, cx, 51
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
cmp ax, 24210
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
cmp dil, sil
jmp .bb_0.1
.bb_0.1:
mul rax
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bt eax, esi
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
setz sil
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
