.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 66
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
xor al, al
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, al
add al, dl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
or eax, -1161451853
and dl, -111
lea rax, qword ptr [rbx + rdx + 34714]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
