.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and edx, -44
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and bl, 15 # instrumentation
cmovb ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
cmovnle ebx, edi
cmovnp rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
cmovp dx, dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
bt di, si
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
