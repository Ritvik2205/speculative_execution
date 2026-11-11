.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb cl
btr rcx, rdi
sub dl, al
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test bl, -92
cmp esi, -52
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmovo rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
add dl, dil
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
cmovnp dx, si
test eax, -2032743474
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
