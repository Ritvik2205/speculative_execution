.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
test al, bl
jmp .bb_0.1
.bb_0.1:
test dil, -51
xor sil, bl
and sil, sil
and dl, -73
bt eax, 151
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
lea rax, qword ptr [rbx]
or cl, -36
or rax, 52
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
