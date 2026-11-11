.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 42
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
sub ax, -15315
setp dil
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], dx
lea cx, qword ptr [rdi + rsi + 38]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
add sil, 2
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 30
lea bx, qword ptr [rcx + rax + 1]
and rax, -1128038253
xor dil, -37
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
