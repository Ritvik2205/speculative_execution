.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 95
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
mov al, sil
cmp dl, bl
add cl, -127
movzx esi, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
