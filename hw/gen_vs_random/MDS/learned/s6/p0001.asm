.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
test bl, dl
and dx, 3
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
or sil, -78
and bl, bl
and bx, 46
jmp .bb_0.1
.bb_0.1:
xor si, 80
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test eax, 343548072
or cl, dil
xor dl, 40
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
