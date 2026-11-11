.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 87
and al, -114
xor ax, si
and cl, -127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and cl, -76 # instrumentation
cmovl bx, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
cmovp di, ax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
jmp .bb_0.1
.bb_0.1:
cmovbe eax, esi
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 46
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rcx, 107
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
