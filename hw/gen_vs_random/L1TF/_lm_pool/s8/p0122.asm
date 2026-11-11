.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
cmovs di, bx
sub sil, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and dx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
