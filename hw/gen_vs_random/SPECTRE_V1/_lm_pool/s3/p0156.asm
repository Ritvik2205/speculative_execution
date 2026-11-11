.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
test dil, -116
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 78
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
sbb bl, cl
lea bx, qword ptr [rdx + rdi]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
