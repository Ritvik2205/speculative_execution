.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 116
and cl, al
test eax, -251558852
test cl, -31
xor dx, bx
mov sil, dl
test al, 115
or bl, sil
mov cl, al
not dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
adc al, -117
or al, dl
adc dl, 6
or ax, 48
add dl, dl
add cl, dil
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
