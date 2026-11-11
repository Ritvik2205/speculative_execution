.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, si
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rsi, 72
cmovp bx, dx
btc ecx, 89
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and bx, 64
and rsi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
cmovle dx, cx
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
cmovle rdx, rdx
cmovns edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
test rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
bts ax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
