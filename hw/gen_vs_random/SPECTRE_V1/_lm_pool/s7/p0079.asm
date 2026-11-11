.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
cmovno bx, ax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc dx, -112
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
add al, al
btc bx, si
sbb cl, 105
and dl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
