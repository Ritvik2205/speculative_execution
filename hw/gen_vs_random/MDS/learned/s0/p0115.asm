.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
test bl, 106
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or dl, -115
btr rdx, 194
bts eax, edx
or dl, 22
xor bx, cx
and eax, -2116875023
and cx, si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
