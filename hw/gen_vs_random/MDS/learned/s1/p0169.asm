.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
xor ax, -4010
and rax, 4
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xor dil, -3
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr ebx, ecx
xor eax, 571592471
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
