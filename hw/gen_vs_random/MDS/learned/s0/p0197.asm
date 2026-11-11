.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
test cl, 54
or dl, -31
or dl, bl
and al, dil
xor ax, -1005
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
or si, 94
and dil, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
