.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 55
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
not edi
cmp ecx, eax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
test di, bx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
imul edx
bt rdi, rax
cdq
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
sbb bl, dl
sub al, sil
add al, 10 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
