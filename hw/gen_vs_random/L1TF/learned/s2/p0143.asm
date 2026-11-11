.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
sbb sil, -79
not al
xor al, 45
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor ebx, -81
sub cl, -49
xor rax, -2072052278
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
