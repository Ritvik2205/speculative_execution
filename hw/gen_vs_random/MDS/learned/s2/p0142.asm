.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19740
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
bt di, si
test edi, -1252846009
or ax, -14271
btc di, 164
test dil, -51
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test rdi, rsi
xor cl, bl
and dl, -73
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
or sil, -49
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or cl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
