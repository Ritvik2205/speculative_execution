.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], 16
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
