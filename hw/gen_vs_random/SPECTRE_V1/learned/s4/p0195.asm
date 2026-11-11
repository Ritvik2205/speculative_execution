.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, al
or eax, 1276549484
cmp rax, 900122030
cmp al, sil
cmp dl, 119
add dl, bl
cmp sil, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rsi + rax + 63231]
sub al, dl
adc bl, -73
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
