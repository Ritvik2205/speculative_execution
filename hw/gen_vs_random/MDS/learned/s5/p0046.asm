.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
and bl, 68
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
or al, dl
or al, 30
test cl, -113
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test dl, 9
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 76
btc si, 99
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or sil, dl
test dil, 46
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
