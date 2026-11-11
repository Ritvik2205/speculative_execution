.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rcx + rax + 58]
test sil, bl
and rbx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rbx]
add cl, cl
and rdi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdi]
lea eax, qword ptr [rbx]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
test dil, -116
sub rcx, rbx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
bt rdx, rbx
cmovno dx, di
btr ax, 197
cmovb ecx, eax
add bl, -12 # instrumentation
lea rdx, qword ptr [rbx + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
