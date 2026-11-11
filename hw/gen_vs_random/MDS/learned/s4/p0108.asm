.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 10
xor dl, bl
or dil, -76
test cl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
jmp .bb_0.2
.bb_0.2:
test edi, -1252846009
test cl, 62
xor cl, 15
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and si, -121
and rax, 452940266
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
