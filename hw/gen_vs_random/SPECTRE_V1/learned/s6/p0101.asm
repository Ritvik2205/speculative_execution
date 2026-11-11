.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
add al, dil
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or cl, dil
sbb sil, bl
sbb al, 33
adc cl, bl
and rdi, rsi
xor cl, bl
add al, al
and bl, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
