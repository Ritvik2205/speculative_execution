.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb sil, sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, -104
xor dl, dil
xor al, 89
jmp .bb_0.2
.bb_0.2:
test al, -82
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
