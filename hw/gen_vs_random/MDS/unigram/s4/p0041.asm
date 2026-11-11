.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
test rax, -2052112368
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
bt edi, 225
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and dil, dl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
cmovns rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
btr si, dx
btc ebx, 149
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
