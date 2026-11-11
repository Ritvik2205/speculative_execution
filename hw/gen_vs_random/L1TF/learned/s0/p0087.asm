.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and al, cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
