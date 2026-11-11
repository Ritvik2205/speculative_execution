.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
add rsi, 44
sbb dl, al
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
xor sil, 64
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
or al, -48
cmovb di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
