.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
lea rcx, qword ptr [rcx + rbx]
sbb dl, -26
sbb sil, 19
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
and al, sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 29
test di, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
