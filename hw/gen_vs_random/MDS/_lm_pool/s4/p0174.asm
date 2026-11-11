.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or cl, sil
and dl, -73
or dil, sil
or bl, cl
test dil, -80
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
xor al, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
xor sil, 110
test ecx, -1843375753
or dl, -97
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
