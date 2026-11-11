.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
sub cl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
lea rbx, qword ptr [rdi + rsi + 18]
sbb rcx, 5
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and sil, bl
xchg sil, bl
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
