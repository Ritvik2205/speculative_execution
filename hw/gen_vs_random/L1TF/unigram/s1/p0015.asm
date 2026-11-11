.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
btr edi, esi
setnl cl
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
sub dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
test dx, dx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
cmp sil, sil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
cmovbe si, si
xor al, bl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
imul rdx, rdx
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
