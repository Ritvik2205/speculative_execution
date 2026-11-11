.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 25
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
add cl, dil
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
xor dl, bl
lea cx, qword ptr [rsi]
add dil, dil
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
