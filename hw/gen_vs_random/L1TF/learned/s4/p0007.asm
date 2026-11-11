.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
imul bx, di, -32
sub eax, 56
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and al, -68
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
