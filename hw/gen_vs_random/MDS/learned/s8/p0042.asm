.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
test al, sil
test sil, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and cl, -71
test dil, -51
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and cl, -71
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or al, -17
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
test eax, -1634766116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
