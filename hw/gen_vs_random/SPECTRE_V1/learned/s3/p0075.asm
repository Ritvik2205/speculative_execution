.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor cl, 78
add al, -109
test al, 40
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, -33
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
dec al
test al, 42
add dil, cl
xor bl, dil
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
