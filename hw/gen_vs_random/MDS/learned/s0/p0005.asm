.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -30938
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
not di
and cl, -63
and cl, 40
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 19
and cl, 40
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 66
bts rax, 149
sub ax, bx
test al, -59
cmovnb rdi, rdi
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
or si, 53
cmovnbe si, bx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 8
xor rsi, 51
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
