.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb edx, edi
sub bl, 15
add dil, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
xor cl, dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
movzx edx, al
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
or dl, -67
test bx, 79
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
or dl, dil
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
