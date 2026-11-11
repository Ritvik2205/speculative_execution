.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 83
xor sil, 110
or bx, 40
xor cx, -18
or cl, sil
bts rdi, rcx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
or dil, -41
or rsi, 87
test si, 12
and sil, al
or al, bl
test al, 127
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
