.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
mov bl, bl
add bl, 7 # instrumentation
cmovnl esi, eax
add bl, -108 # instrumentation
sbb al, 9
add dil, 27
test dl, 37
xchg ebx, esi
imul rsi, rdi, 51
and si, 21
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
lea dx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
add al, -73 # instrumentation
setnbe al
imul dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
