.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 199
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
cmovo si, cx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
xor al, 77
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
add dil, 68
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
test eax, 758789512
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
bts rsi, 89
test eax, 758789512
or al, al
bts bx, cx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
