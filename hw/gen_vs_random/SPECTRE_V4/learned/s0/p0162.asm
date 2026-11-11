.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 94
dec dil
or al, bl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmp al, -44
jmp .bb_0.1
.bb_0.1:
xchg ebx, ecx
cmp dil, -92
sub dl, -16
add cl, bl
sub ax, 25338
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
sub esi, -69
sub al, 29
or al, sil
and ax, -12738
xchg al, bl
add cl, al
cmp al, bl
xor al, cl
not bx
cmp al, -44
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
sub al, 11
add bl, -38
xchg ebx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
xor al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
