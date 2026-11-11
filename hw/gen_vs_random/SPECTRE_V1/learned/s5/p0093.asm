.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
cmp rax, 1189904463
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
xchg sil, bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -13
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
sbb sil, dil
lea ax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
