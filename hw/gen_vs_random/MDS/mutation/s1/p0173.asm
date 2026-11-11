.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 4
cmovs ecx, edi
and rax, 452940266
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
test cl, cl
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
cmovnbe rcx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
cmovnle di, dx
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
