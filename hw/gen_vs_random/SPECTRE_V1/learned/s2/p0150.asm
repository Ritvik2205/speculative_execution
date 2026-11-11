.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and al, dil
add ax, 8031
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and al, -54
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
