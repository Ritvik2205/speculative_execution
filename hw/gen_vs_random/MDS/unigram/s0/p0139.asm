.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
cmovns di, dx
test dx, 16353
cmovnp esi, ecx
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 73
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test ax, -31596
cmovp rsi, rcx
or al, bl
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
