.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -102
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or sil, cl
xor cl, dil
test al, -81
or al, 16
or dl, dil
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
test rcx, -613256812
or dil, -78
and rax, -636362975
and sil, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
