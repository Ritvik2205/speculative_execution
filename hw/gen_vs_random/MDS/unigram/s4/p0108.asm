.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
test rbx, 99
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
not cl
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and al, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
cmovz rdx, rsi
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovnbe rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
