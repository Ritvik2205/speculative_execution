.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, sil
or rdx, rdi
movsx rcx, dx
add bl, 27 # instrumentation
setnle bl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
movzx edi, di
sub dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
cmovo rcx, rdx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
