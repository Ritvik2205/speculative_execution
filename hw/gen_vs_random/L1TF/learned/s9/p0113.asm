.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 82
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
lea cx, qword ptr [rax + rcx + 97]
sbb al, 61
jmp .bb_0.1
.bb_0.1:
sub rax, -2089384489
sbb eax, -403815802
cmp rdx, 33
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
xor rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
