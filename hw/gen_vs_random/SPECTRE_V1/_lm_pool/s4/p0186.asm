.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 58
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
lea di, qword ptr [rdx]
and cl, -57
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor cx, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
