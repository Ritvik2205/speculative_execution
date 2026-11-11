.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
sub al, -66
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 62
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 14
sbb dl, 127
lea rax, qword ptr [rbx + rdx + 34714]
sbb eax, 1392087754
not ecx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
