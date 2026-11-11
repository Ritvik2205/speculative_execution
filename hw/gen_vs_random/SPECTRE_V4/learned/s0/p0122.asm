.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
cmp dil, -29
cmp eax, -2073187604
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
cmovnp dx, cx
inc bl
sub dil, sil
cmp edi, 3
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
test ax, -18054
and rcx, 29
and dl, -53
xor al, dl
sub al, cl
xor di, 21
bt cx, si
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sub bl, -98
add ax, 17333
xor al, dil
add dl, -82
and dil, -23
adc dil, -15
add al, dl
adc cl, dl
cmp dil, -29
xchg esi, ecx
sub dl, sil
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
