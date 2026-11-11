.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 18
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
xor esi, 106
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dil, cl
lea bx, qword ptr [rcx + rax]
lea di, qword ptr [rcx + rsi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rbx]
or cl, -98
lea di, qword ptr [rcx + rdx]
sub cx, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
