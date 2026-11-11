.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, sil
and sil, 52
xchg ecx, edi
test al, -126
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor sil, al
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
dec dl
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
