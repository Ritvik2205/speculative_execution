.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120
and edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
lea si, qword ptr [rdi + rbx + 44]
lea rax, qword ptr [rdx + rdx + 1405]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
neg edx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and bl, cl
and bl, 125
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
