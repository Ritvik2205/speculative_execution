.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
test dl, bl
and dl, sil
xor si, 80
test sil, -96
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 79
and rdx, 81
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
test dl, cl
or dl, cl
and dil, -62
bts di, 73
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and dl, -73
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
