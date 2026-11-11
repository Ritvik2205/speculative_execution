.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
sbb dl, al
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sub ecx, 7
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
lea dx, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rdi + rsi + 91]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 53
bt dx, ax
mov al, bl
sub sil, cl
sbb rax, 803312930
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
