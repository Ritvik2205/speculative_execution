.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
mov dil, al
add al, dl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 55
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
add bl, sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
adc dl, 48
jns .bb_0.2
jmp .exit_0
.bb_0.2:
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
