.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ecx, ecx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovb di, di
or ax, ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
bts rdx, 200
and eax, 33
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 25
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 21
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
