.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or rax, 1362710293
add sil, al
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
test rdx, rdi
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
btr si, 24
xor edi, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
