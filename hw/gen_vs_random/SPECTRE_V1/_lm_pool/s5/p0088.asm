.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
sbb dil, -93
mov dil, bl
lea rcx, qword ptr [rax]
xor cl, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 25
and bl, al
lea ecx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
