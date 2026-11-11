.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -92
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp esi, -52
cmovo rdi, rsi
setnb cl
btr rcx, rdi
sub dl, al
jmp .bb_0.1
.bb_0.1:
add dl, dil
test eax, -2032743474
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
and sil, sil
cmovnp dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
