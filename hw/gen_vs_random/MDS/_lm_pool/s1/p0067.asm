.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
test bl, al
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or al, dl
or al, 54
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
xor eax, 1640090871
test bl, 65
or dil, 16
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or cl, -77
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 27
or dil, 12
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
