.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
test dl, 114
or al, dil
add dl, -82
sub sil, -35
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add sil, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
add dil, sil
sub al, 55
cmp dil, al
sbb bl, 121
or dl, al
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
adc dil, cl
or cl, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
