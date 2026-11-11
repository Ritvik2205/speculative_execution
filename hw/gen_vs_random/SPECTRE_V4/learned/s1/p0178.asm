.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cmp bl, 12
or cl, 66
add dl, -82
sbb edx, 59
mov al, bl
movzx cx, bl
cmp al, 114
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
cmp bl, al
cmp sil, 127
adc dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
