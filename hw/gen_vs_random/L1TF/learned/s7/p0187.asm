.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
sub dil, 87
bt ecx, ebx
setp al
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and bl, 89
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
test cl, 65
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and bx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
