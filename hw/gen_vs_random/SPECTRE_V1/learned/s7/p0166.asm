.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
xor bl, bl
test cl, -120
lea rbx, qword ptr [rdx]
lea ecx, qword ptr [rax]
sbb dl, al
lea bx, qword ptr [rcx + rdi]
or ecx, 28
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
lea rcx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
