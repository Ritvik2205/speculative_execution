.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
xor bl, -61
and cl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
test bl, bl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
or al, bl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 83
and esi, 56
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, rdi
cmovbe si, ax
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
cmovnp cx, ax
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
btc rsi, rsi
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
