.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cmovs di, dx
test cl, 38
setnbe dl
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
btr cx, dx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
imul al
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
add dl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
movzx edx, di
sub cl, -49
cmovb ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
