.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
cmovnbe rcx, rcx
cmovs ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rax, -1701787862
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
test cl, cl
and rax, -1701787862
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
cmovnle di, dx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
or bl, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
