.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
adc bx, 90
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
add bl, 70
jl .bb_0.1
jmp .exit_0
.bb_0.1:
adc edi, 11
neg dl
xchg al, bl
add cl, al
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
