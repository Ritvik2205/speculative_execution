.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 1
or dl, cl
cmp bl, dil
mov cl, al
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmp dl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
mov al, bl
adc bl, cl
cmp dil, 101
xor al, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test esi, -2111618709
cmp dl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
