.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
sbb al, -114
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 71
xor al, -19
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
add dx, -90
and cl, dl
sub al, bl
and cl, 86
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
lea rbx, qword ptr [rcx]
test ax, 636
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
