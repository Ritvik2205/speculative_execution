.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or dl, -31
xor rax, -1657511731
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
btr di, ax
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
btc edx, 75
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
cmovle si, ax
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
