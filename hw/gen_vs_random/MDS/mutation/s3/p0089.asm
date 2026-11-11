.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
cmovs ecx, edi
cmovnbe rcx, rcx
test cl, cl
and rax, 1250429750
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rax, 452940266
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
or bl, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
cmovnle di, dx
jmp .bb_0.2
.bb_0.2:
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
or al, -24
cmovl di, cx
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
test rax, -648054011
and eax, 454700988
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
test dl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
cmovo rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
