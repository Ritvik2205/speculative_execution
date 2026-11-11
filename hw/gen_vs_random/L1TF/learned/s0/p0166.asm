.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test cl, 10
or cl, -78
xchg esi, ecx
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
lea rbx, qword ptr [rsi + rcx + 63]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
