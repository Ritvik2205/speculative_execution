.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 22
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
or al, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and al, bl
test al, 66
xor cx, -18
jmp .bb_0.2
.bb_0.2:
test dl, dil
xor dil, -70
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test al, 127
jmp .bb_0.3
.bb_0.3:
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and esi, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
