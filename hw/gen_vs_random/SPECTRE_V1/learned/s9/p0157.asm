.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
sub al, -82
mov sil, al
cmovnle rdx, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
sbb dil, dl
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rbx]
lea bx, qword ptr [rsi + rdx + 72]
sub dl, -48
mov cl, al
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
