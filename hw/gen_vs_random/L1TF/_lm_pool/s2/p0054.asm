.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
not bl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
xor di, 44
xor al, 89
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
setb cl
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 92
sub al, 9
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
