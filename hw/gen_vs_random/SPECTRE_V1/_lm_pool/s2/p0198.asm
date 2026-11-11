.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
cmp rsi, 53
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
