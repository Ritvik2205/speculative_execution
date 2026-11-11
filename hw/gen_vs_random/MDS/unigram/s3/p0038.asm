.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
cmovnz ax, di
and al, -8
bts dx, 50
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
xor bx, 68
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
xor dil, -124
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
btc edx, edx
cmovnz rdi, rdx
btc edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
bts esi, eax
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
cmovns esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
