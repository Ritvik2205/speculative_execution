.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
add al, 3
or dl, dil
cmp al, dl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
adc bl, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
