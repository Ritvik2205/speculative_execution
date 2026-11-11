.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rcx, rdi
cmovo rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
setnb cl
test bl, 84
sub dl, al
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp esi, 110
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and sil, sil
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
add dl, dil
cmovnp dx, si
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
