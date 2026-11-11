.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
btr eax, 231
xchg rcx, rax
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
setp dil
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
test eax, 899472326
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
