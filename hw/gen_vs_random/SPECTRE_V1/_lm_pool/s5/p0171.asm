.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp rcx, 31
adc sil, -77
sbb edx, 105
lea cx, qword ptr [rdx]
cmp al, dil
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
add cl, -127
not cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
