.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
or dl, cl
xor rax, 20
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
test cl, 99
add al, -80
add bl, cl
cmp al, bl
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
