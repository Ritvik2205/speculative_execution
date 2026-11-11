.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
add rax, 114
or al, sil
cmp al, -122
xor dx, -43
and sil, sil
or dil, -104
sub al, -84
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
sub rax, -1881584175
adc bl, 35
or dil, 89
and dl, -104
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
