.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
xor di, 30
sbb al, 66
setnle al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub bl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
