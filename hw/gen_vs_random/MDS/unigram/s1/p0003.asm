.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
or rdi, 21
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or cl, -77
or di, 0b1000000000000000 # instrumentation
bsf dx, di
bts bx, 3
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
test cl, cl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
xor ebx, 9
and eax, 561041355
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
cmovnz rcx, rdx
xor dil, -3
cmovnle si, si
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
