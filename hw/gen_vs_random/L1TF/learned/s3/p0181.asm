.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
sub al, sil
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
lea rdx, qword ptr [rcx + rax]
or dil, bl
cmp si, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
