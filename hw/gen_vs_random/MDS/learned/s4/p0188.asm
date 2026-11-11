.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 30884
cmovnp bx, cx
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and al, -37
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 88
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and bl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test cl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 32
adc di, 62
cmovle ebx, esi
and al, -56
bts bx, di
cmovz rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
