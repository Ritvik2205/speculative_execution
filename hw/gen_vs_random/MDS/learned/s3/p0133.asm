.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
test sil, -55
and si, -121
jmp .bb_0.1
.bb_0.1:
xor dl, cl
and ax, 5001
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
sub sil, 97
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
