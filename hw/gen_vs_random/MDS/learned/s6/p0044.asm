.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
xor al, 9
or bl, al
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and dil, sil
or rdx, -48
or dil, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or sil, al
and dil, -62
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
or cl, 7
and dil, -62
xor rdi, -9
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor sil, -46
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
