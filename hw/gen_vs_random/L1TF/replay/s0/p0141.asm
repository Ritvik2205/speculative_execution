.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, al
cmp esi, -52
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmovo rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
setnb cl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test bl, -92
btr rcx, rdi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
and sil, sil
cmovnp dx, si
test eax, -2032743474
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
