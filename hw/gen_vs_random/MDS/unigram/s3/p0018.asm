.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
cmovo cx, di
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and bl, sil
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
cmovnb ax, cx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and sil, cl
cmovnl rdi, rdi
and dl, -73 # instrumentation
cmovns rsi, rbx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and al, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
btr rsi, 73
and dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
