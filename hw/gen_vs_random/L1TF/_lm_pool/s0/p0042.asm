.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
mov dil, 91
test al, cl
bt eax, ecx
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
lea cx, qword ptr [rdi + rsi + 26]
lea rsi, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
