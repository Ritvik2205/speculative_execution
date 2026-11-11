.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 38
and dl, -73
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and cx, -8
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
btr cx, cx
cmovl rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
xor bx, si
test bl, cl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
bt cx, bx
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
