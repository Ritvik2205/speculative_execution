.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
sub cl, -47
sbb dil, bl
test dil, -116
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
lea cx, qword ptr [rbx + rax + 72]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
test dl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
