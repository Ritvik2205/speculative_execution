.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and sil, -90
bt rcx, rdi
test ax, 7679
jmp .bb_0.3
.bb_0.3:
setno dl
jmp .bb_0.4
.bb_0.4:
xor al, 89
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
