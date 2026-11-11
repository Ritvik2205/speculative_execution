.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
btc edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
btc di, si
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
bts dx, 50
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rbx, rax
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
bts di, 37
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
