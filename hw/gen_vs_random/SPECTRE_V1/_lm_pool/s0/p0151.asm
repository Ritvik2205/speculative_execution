.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 33
cmp sil, cl
test bl, -8
lea rdi, qword ptr [rdx + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
add bl, 70
and bl, 124
or eax, -1161451853
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
cmovs bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
