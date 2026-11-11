.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
or al, -75
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor al, bl
or al, -75
xor sil, al
bts rdx, rax
and di, 91
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
and bl, 68
test si, 27
xor dl, 8
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
xor al, cl
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
