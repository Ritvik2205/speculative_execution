.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
cmp bl, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
lea ebx, qword ptr [rax]
add cl, cl
lea rbx, qword ptr [rdi + rax + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
