.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, edx
btc di, 233
xor al, bl
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
or di, si
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
xor edi, 70
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
xor cl, 83
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and dl, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
btr esi, edx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
