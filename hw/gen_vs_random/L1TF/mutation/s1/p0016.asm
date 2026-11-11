.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test bl, 12
sub dl, al
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmp esi, 110
setnb cl
cmovo rdi, rsi
btr rcx, rdi
jmp .bb_0.1
.bb_0.1:
test eax, 899472326
and sil, sil
cmovnp dx, si
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
add dl, dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
