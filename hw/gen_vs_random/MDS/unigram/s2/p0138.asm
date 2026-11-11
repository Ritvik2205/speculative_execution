.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo si, ax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
bts di, 37
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
test al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
or rdi, rax
jmp .bb_0.1
.bb_0.1:
cmovnb ecx, eax
cmovbe edi, esi
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
cmovnp rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and dil, 32 # instrumentation
cmovnbe edi, esi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 10
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
