.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 3
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
test al, 22
test sil, -55
or al, -61
xor cx, -18
test al, 22
test eax, 298249463
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
xor bl, -61
or dl, sil
or bl, dl
test sil, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
