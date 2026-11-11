.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
xor al, 122
test dl, bl
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
or dl, -31
or sil, al
or al, bl
or bl, dil
and bl, 68
xor rax, -404206377
or bl, cl
bt ax, si
or cl, al
or al, 16
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
