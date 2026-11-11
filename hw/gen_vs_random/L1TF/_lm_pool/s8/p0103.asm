.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
cmp edi, 87
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
or bl, al
cmovp si, bx
sbb dl, cl
xor ax, -24879
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sub al, -97
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rcx]
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
