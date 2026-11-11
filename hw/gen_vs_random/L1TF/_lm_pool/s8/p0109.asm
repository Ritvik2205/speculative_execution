.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
or sil, sil
test cl, 69
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
lea rdx, qword ptr [rcx + rdi + 12]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb sil, -79
add sil, -61
js .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
