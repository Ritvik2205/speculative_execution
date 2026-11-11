.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -109 # instrumentation
cmovns rbx, rbx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
bts rbx, 52
btc rax, rsi
and cl, dil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 80
bt rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 93
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and dl, -7
and si, 17
and al, -37
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 35
cmovnb rax, rax
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
or si, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
