.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rsi, rsi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
bt esi, edx
bt di, 52
xor sil, -14
or rsi, 99
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
xor al, 99
test cl, -123
btr si, 52
btc eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
btr rcx, 100
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 67
or dil, dl
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 16
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
cmovnz edi, edi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
