.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cdq
add sil, 115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
neg dl
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
movzx dx, dl
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
setns dl
add dil, -50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
inc rcx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 55
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
