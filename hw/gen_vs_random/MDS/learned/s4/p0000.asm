.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, bl
or dil, -78
test edx, -372470678
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
xor cl, al
xor cl, 24
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor bl, dl
jmp .bb_0.1
.bb_0.1:
not al
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
bt dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
