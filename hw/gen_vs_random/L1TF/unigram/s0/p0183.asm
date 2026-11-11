.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
add bl, -52 # instrumentation
not edi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or bl, dl
sub cx, 10
inc rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
sub dil, -70
add dil, 108 # instrumentation
setl dil
sub cl, dl
cmovl rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
sub dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
